<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Brian2694\Toastr\Facades\Toastr;

class ResetPasswordController extends Controller
{
    public function showResetForm($token)
    {
        $email = request()->query('email');
        return view(theme('passwords.reset'), ['token' => $token, 'email' => $email]);
    }

    public function reset(Request $request)
    {
        $request->validate([
            'token' => 'required',
            'email' => 'required|email',
            'password' => 'required|confirmed|min:6'
        ]);

        $status = Password::reset(
            $request->only(
                'email',
                'password',
                'password_confirmation',
                'token'
            ),
            function (User $user, $password) {
                $user->forceFill([
                    'password' => Hash::make($password)
                ])->save();
            }
        );

        if($status === Password::PASSWORD_RESET){
            Toastr::success(__($status));
            return redirect()->route('login')->with('status', __($status));
        }
        Toastr::error(__($status));
        return back()->withErrors(['email' => [__($status)]]);
    }
}