<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Profile;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    // List all profiles
    public function index()
    {
        return Profile::with('user')->get();
    }

    // Store a new profile
    public function store(Request $request)
    {
        $request->validate([
            'user_id'      => 'required|exists:users,id',
            'avatar'       => 'nullable|string',
            'first_name'   => 'required|string',
            'last_name'    => 'nullable|string',
            'phone'        => 'nullable|string',
            'gender'       => 'nullable|in:male,female,other',
            'date_of_birth'=> 'nullable|date',
            'address'      => 'nullable|string',
            'city'         => 'nullable|string',
            'state'        => 'nullable|string',
            'country'      => 'nullable|string',
            'post'         => 'nullable|string',
            'village'      => 'nullable|string',
        ]);

        $profile = Profile::create($request->all());

        return response()->json($profile, 201);
    }

    // Show a single profile
    public function show(Profile $profile)
    {
        return $profile->load('user');
    }

    // Update a profile
    public function update(Request $request, Profile $profile)
    {
        $request->validate([
            'avatar'       => 'nullable|string',
            'first_name'   => 'sometimes|required|string',
            'last_name'    => 'nullable|string',
            'phone'        => 'nullable|string',
            'gender'       => 'nullable|in:male,female,other',
            'date_of_birth'=> 'nullable|date',
            'address'      => 'nullable|string',
            'city'         => 'nullable|string',
            'state'        => 'nullable|string',
            'country'      => 'nullable|string',
            'post'         => 'nullable|string',
            'village'      => 'nullable|string',
        ]);

        $profile->update($request->all());

        return response()->json($profile);
    }

    // Delete a profile
    public function destroy(Profile $profile)
    {
        $profile->delete();

        return response()->json(null, 204);
    }
}
