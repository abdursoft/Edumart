<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    // List all users
    public function index()
    {
        return User::orderBy('created_at', 'desc')->get();
    }

    // Store a new user
    public function store(Request $request)
    {
        $request->validate([
            'name'     => 'required|string|max:255',
            'email'    => 'required|email|unique:users,email',
            'password' => 'required|string|min:6',
            'role'     => 'nullable|in:admin,teacher,student,guardian,staff,governing,comity,accountant,receptionist,librarian,author',
        ]);

        $user = User::create($request->all());

        return response()->json($user, 201);
    }

    // Show a single user
    public function show(User $user)
    {
        return $user;
    }

    // Update a user
    public function update(Request $request, User $user)
    {
        $request->validate([
            'name'                => 'sometimes|required|string|max:255',
            'email'               => 'sometimes|required|email|unique:users,email,' . $user->id,
            'password'            => 'nullable|string|min:6',
            'password_token'      => 'nullable|string|max:255',
            'password_otp'        => 'nullable|integer|min:0',
            'password_otp_hits'   => 'nullable|integer|min:0',
            'login_request'       => 'nullable|integer|min:0',
            'role'                => 'nullable|in:admin,teacher,student,guardian,staff,governing,comity,accountant,receptionist,librarian,author',
        ]);

        $data = $request->all();

        if (empty($data['password'])) {
            unset($data['password']);
        }

        $user->update($data);

        return response()->json($user);
    }

    // Delete a user
    public function destroy(User $user)
    {
        $user->delete();
        return response()->json(null, 204);
    }
}
