<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    /**
     * Handle the login request.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email'    => 'required|email|exists:users,email',
            'password' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }

        if ($request->captcha !== session('captcha_code') ) {
            return response()->json([
                'status'  => 'error',
                'message' => 'Invalid security captcha',
            ], 401);
        }

        session()->forget('captcha_code');

        if (! Auth::attempt($request->only('email', 'password'))) {
            return response()->json([
                'status'  => 'error',
                'message' => 'Invalid email or password',
            ], 401);
        }

        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials, $request->boolean('remember'))) {

            $request->session()->regenerate();

            $user = auth()->user();
            $user->assignRole($user->role);
            return response()->json([
                'status'   => 'success',
                'redirect' => route($user->role . '.dashboard'),
                'message'  => 'Login successful!',
            ]);
        }
        return response()->json([
            'status'  => 'error',
            'message' => 'Login successful!',
        ], 401);
    }

    /**
     * Handle the registration request.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        // Logic for handling registration
        $validatedData = $request->validate([
            'name'     => 'required|string|max:255',
            'email'    => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6',
        ]);

        try {
            $users = User::count();
            // Create the user
            $user = User::create([
                'name'     => $validatedData['name'],
                'email'    => $validatedData['email'],
                'password' => bcrypt($validatedData['password']),
                'role'     => $users > 0 ? 'user' : 'admin',
            ]);

            // Log the user in
            auth()->login($user);

            if ($request->axios() || $request->ajax()) {
                return response()->json([
                    'code'    => 'REGISTRATION_SUCCESS',
                    'message' => 'Registration successful',
                ]);
            }

            return redirect()->route('auth.dashboard')->with('success', 'Registration successful!');
        } catch (\Exception $e) {
            if ($request->axios() || $request->ajax()) {
                return response()->json([
                    'code'    => 'REGISTRATION_SUCCESS',
                    'message' => 'Registration successful',
                ]);
            }
            return back()->withErrors(['error' => 'Registration failed. Please try again.']);
        }
    }

    /**
     * Handle the password reset request.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function resetPassword(Request $request)
    {
        // Logic for handling password reset
    }

    /**
     * check user email existing or not
     */
    public function emailCheck(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
        ]);

        $check = User::where('email', $request->email)->first();
        if ($check) {
            return response()->json([
                'code'    => 'EMAIL_EXISTS',
                'message' => 'Nice, Match found',
            ]);
        } else {
            return response()->json([
                'code'    => 'EMAIL_NOT_EXISTS',
                'message' => 'Go ahead for next!',
            ]);
        }
    }

    // auth logout
    public function logout()
    {
        if (auth()->user()) {
            auth()->logout();
        }
        Toastr::success('Log out successful', 'Success');
        return redirect(route('login'));
    }

    /**
     * build captcha
     */
    public function captcha()
    {
        $length = 5;
        $width  = 160;
        $height = 60;

        $fonts = [
            public_path('static/fonts/juice.ttf'),
            public_path('static/fonts/SIXTY.TTF'),
        ];

        $bgColors = [
            [245, 245, 245],
            [230, 240, 255],
            [255, 240, 230],
        ];

        $textColors = [
            [40, 40, 120],
            [120, 40, 40],
            [40, 120, 60],
        ];

        $chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';

        // Generate code
        $code = substr(str_shuffle($chars), 0, $length);
        session(['captcha_code' => $code]);

        // Create image
        $image = imagecreatetruecolor($width, $height);

        // Background
        $bgColorArr = $bgColors[array_rand($bgColors)];
        $bg = imagecolorallocate($image, ...$bgColorArr);
        imagefill($image, 0, 0, $bg);

        // Noise lines
        for ($i = 0; $i < 6; $i++) {
            $lineColor = imagecolorallocate(
                $image,
                rand(120, 200),
                rand(120, 200),
                rand(120, 200)
            );
            imageline(
                $image,
                rand(0, $width),
                rand(0, $height),
                rand(0, $width),
                rand(0, $height),
                $lineColor
            );
        }

        // Noise dots
        for ($i = 0; $i < 400; $i++) {
            $dotColor = imagecolorallocate(
                $image,
                rand(100, 200),
                rand(100, 200),
                rand(100, 200)
            );
            imagesetpixel($image, rand(0, $width), rand(0, $height), $dotColor);
        }

        // Draw text
        $x = 20;
        foreach (str_split($code) as $char) {
            $fontSize = rand(26, 30);
            $angle = rand(-25, 25);
            $font = $fonts[array_rand($fonts)];

            $textColorArr = $textColors[array_rand($textColors)];
            $textColor = imagecolorallocate($image, ...$textColorArr);

            imagettftext(
                $image,
                $fontSize,
                $angle,
                $x,
                rand(40, 55),
                $textColor,
                $font,
                $char
            );

            $x += 26;
        }

        // ✅ Proper Laravel response
        return response()->stream(function () use ($image) {
            imagepng($image);
            imagedestroy($image);
        }, 200, [
            'Content-Type' => 'image/png',
            'Cache-Control' => 'no-store, no-cache, must-revalidate, max-age=0',
        ]);
    }
}
