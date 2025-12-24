<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;

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
        // dd($request->input());
        // Logic for handling login
        $credentials = $request->only('email', 'password');

        try {
            if (Auth::attempt($credentials, $request->boolean('remember'))) {
                $request->session()->regenerate();
                $user = auth()->user();
                $user->assignRole($user->role);
                return redirect()->route('admin.dashboard')->with('success', 'Login successful!');
            }
            dd($credentials);
        } catch (\Throwable $th) {
            dd($th->getMessage());
        }
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
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6',
        ]);

        try {
            $users = User::count();
            // Create the user
            $user = User::create([
                'name' => $validatedData['name'],
                'email' => $validatedData['email'],
                'password' => bcrypt($validatedData['password']),
                'role' => $users > 0 ? 'user' : 'admin'
            ]);

            // Log the user in
            auth()->login($user);

            if($request->axios){
                return response()->json([
                    'code' => 'REGISTRATION_SUCCESS',
                    'message' => 'Registration successful',
                ]);
            }

            return redirect()->route('auth.dashboard')->with('success', 'Registration successful!');
        } catch (\Exception $e) {
            if($request->axios){
                return response()->json([
                    'code' => 'REGISTRATION_SUCCESS',
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
    public function emailCheck(Request $request){
        $request->validate([
            'email' => 'required|email'
        ]);

        $check = User::where('email',$request->email)->first();
        if($check){
            return response()->json([
                'code' => 'EMAIL_EXISTS',
                'message' => 'Nice, Match found'
            ]);
        }else{
            return response()->json([
                'code' => 'EMAIL_NOT_EXISTS',
                'message' => 'Go ahead for next!'
            ]);
        }
    }

    // auth logout
    public function logout(){
        if(auth()->user()){
            auth()->logout();
        }
        return redirect(route('auth.login'));
    }
}
