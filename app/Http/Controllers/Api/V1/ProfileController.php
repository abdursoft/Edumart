<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Profile;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class ProfileController extends Controller
{
    // List all profiles
    public function index($id=null)
    {
        return Profile::with('user')->get();
    }

    // Store a new profile
    public function store(Request $request)
    {
        $validated = $request->validate([
            'user_id'      => 'required|exists:users,id',
            'avatar'       => 'nullable|files|mimes:jpeg,jpg,png',
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

        if($request->hasFile('avatar')){
                $file = $request->file('avatar');

                $dir = public_path('uploads/profile');

                if (!File::exists($dir)) {
                    File::makeDirectory($dir, 0755, true);
                }

                $filename = uniqid() . '.webp';
                $path = public_path('uploads/profile/' . $filename);

                $manager = new ImageManager(new Driver());

                $manager->read($file)
                    ->resize(1200, null, function ($constraint) {
                        $constraint->aspectRatio();
                        $constraint->upsize();
                    })
                    ->toWebp(80)
                    ->save($path);
                $validated['avatar'] = 'uploads/profile/' . $filename;
            }

        Profile::create($validated);
        Toastr::success('Profile data updated successfully', 'Success');
        return redirect()->back();
    }

    // Show a single profile
    public function show(Profile $profile)
    {
        return $profile->load('user');
    }

    // Update a profile
    public function update(Request $request)
    {
        $validated = $request->validate([
            'avatar'       => 'nullable|file|mimes:jpeg,jpg,png',
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

        $profile = Profile::where('user_id', Auth::id())->first();

        if($request->hasFile('avatar')){
                $file = $request->file('avatar');

                $dir = public_path('uploads/profile');

                if (!File::exists($dir)) {
                    File::makeDirectory($dir, 0755, true);
                }

                $filename = uniqid() . '.webp';
                $path = public_path('uploads/profile/' . $filename);

                $manager = new ImageManager(new Driver());

                $manager->read($file)
                    ->resize(1200, null, function ($constraint) {
                        $constraint->aspectRatio();
                        $constraint->upsize();
                    })
                    ->toWebp(80)
                    ->save($path);
                $validated['avatar'] = 'uploads/profile/' . $filename;
            }

        $profile->update($validated);
        Toastr::success('Profile data updated successfully', 'Success');
        return back();
    }

    // Delete a profile
    public function destroy(Profile $profile)
    {
        $profile->delete();

        return response()->json(null, 204);
    }

    /**
     * Teacher profile update
     */
    public function profile(){
        $profile = $this->profile;
        $profileData = Profile::where('user_id', Auth::id())->first();
        return view(theme('pages.profile'), compact('profile', 'profileData'));
    }
}
