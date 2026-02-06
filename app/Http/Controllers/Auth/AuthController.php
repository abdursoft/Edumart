<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
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
            'email' => 'required|email|exists:users,email',
            'password' => 'required|string',
        ]);


        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }

        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json([
                'status' => 'error',
                'message' => 'Invalid email or password',
            ], 401);
        }


        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials, $request->boolean('remember'))) {

            $request->session()->regenerate();

            $user = auth()->user();
            $user->assignRole($user->role);
            return response()->json([
                'status' => 'success',
                'redirect' => route($user->role.'.dashboard'),
                'message' => 'Login successful!',
            ]);
        }
        return response()->json([
            'status' => 'error',
            'message' => 'Login successful!',
        ],401);
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

            if($request->axios() || $request->ajax()){
                return response()->json([
                    'code' => 'REGISTRATION_SUCCESS',
                    'message' => 'Registration successful',
                ]);
            }

            return redirect()->route('auth.dashboard')->with('success', 'Registration successful!');
        } catch (\Exception $e) {
            if($request->axios() || $request->ajax()){
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
        Toastr::success('Log out successful', 'Success');
        return redirect(route('login'));
    }
}
