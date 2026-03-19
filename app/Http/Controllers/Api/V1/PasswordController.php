<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Jobs\PasswordOTP;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class PasswordController extends Controller
{
    /**
     * Show the forgot password page.
     *
     * @return \Illuminate\View\View
     */
    public function showForgotPasswordForm()
    {
        return view('password.forgot-password');
    }

    /**
     * Show the reset password page.
     *
     * @return \Illuminate\View\View
     */
    public function showResetPasswordForm()
    {
        return view('password.reset-password');
    }

    /**
     * Handle the password OTP sending.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function sendPasswordOTP(Request $request)
    {        // Validate the request data
        $request->validate([
            'email' => 'required|email|exists:users,email',
        ]);

        $user = User::where('email', $request->input('email'))->first();

        if (!$user) {
            return back()->withErrors(['email' => 'No user found with this email address.']);
        }

        try {
            // Generate OTP and send email
            $token = bin2hex(random_bytes(16)); // Example token generation
            $user->password_reset_token = $token; // Store token in the user model
            $otp = rand(100000, 999999); // Example OTP generation
            $user->otp = $otp; // Store OTP in the user model
            $user->save();

            PasswordOTP::dispatch($user->email, $user->name);
            
            return redirect()->route('password.reset')->with('success', 'OTP sent to your email address.')->cookie('password_reset_token', $token, 60); // Store token in cookie for 60 minutes
        } catch (\Exception $e) {
            return back()->withErrors(['error' => 'Failed to send OTP. Please try again later.']);
        }
    }

    /**
     * Handle the password reset.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function resetPassword(Request $request)
    {
        // Validate the request data
        $request->validate([
            'otp' => 'required|digits:6',
            'password' => 'required|string|min:8|confirmed',
        ]);

        // extract the password reset token from cookie
        $token = $request->cookie('password_reset_token');

        $user = User::where('password_reset_token', $token)->first();
        if (!$user) {
            return back()->withErrors(['error' => 'Invalid password reset token. Please request a new one']);
        }

        // check otp and reset token
        if ($user->otp === null || $user->password_reset_token === null) {
            return back()->withErrors(['otp' => 'OTP or reset token has expired. Please request a new one.']);
        }

        // check otp match
        if($request->otp != $user->otp){
            return back()->withErrors(['otp' => "OTP not match, please check out your email"]);
        }

        // check OTP expiration
        $otpExpiration = now()->subMinutes(10); // Example expiration time
        if ($user->updated_at < $otpExpiration) {
            return back()->withErrors(['otp' => 'OTP has expired. Please request a new one.']);
        }

        try {
            // Update the user's password
            $user->password = bcrypt($request->input('password'));
            $user->otp = null; // Clear OTP after successful reset
            $user->password_reset_token = null; // Clear token after successful reset
            $user->save();

            return redirect()->route('login')->with('success', 'Password reset successfully. You can now log in with your new password.');
        } catch (\Exception $e) {
            return back()->withErrors(['error' => 'Failed to reset password. Please try again later.']);
        }

    }
}