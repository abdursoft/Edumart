<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Designation;
use App\Models\ParentModel;
use App\Models\Profile;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class ParentController extends Controller
{
    //show parent list
    public function index(){
        $parents = User::where('role','guardian')->get();
        $parent  = null;
        return view(backend('pages.parent'), compact('parent','parents'));
    }

    // Store a new parent
    public function store(Request $request)
    {
        $validate = $request->validate([
            'name'     => 'required|string',
            'email' => 'nullable|email',
            'phone' => 'required|string',
            'address' => 'required|string',
            'password' => 'required|max:20',
            'login_permit' => 'required|in:allowed,blocked',
        ]);

        try {
            DB::beginTransaction();
            $user = User::create([
                'name' => $validate['name'],
                'email' => $validate['email'],
                'role'  => 'guardian',
                'password' => Hash::make($validate['password']),
                'login_permit' => $validate['login_permit']
            ]);
            Profile::create([
                'user_id' => $user->id,
                'first_name' => $user->name,
                'phone' => $request->phone,
                'address' => $request->address
            ]);
            DB::commit();
            return back()->with('success', 'Guardian successfully created');
        } catch (\Throwable $th) {
            DB::rollBack();
            return back()->with('error', 'Guardian couldn\'t created');
        }

    }

    // Show a single parent
    public function show($id)
    {
        $parents = User::where('role','guardian')->get();
        $parent  = User::findOrFail($id);
        return view(backend('pages.parent'), compact('parent','parents'));

    }

    // Update a parent
    public function update(Request $request, $id)
    {
        $validate = $request->validate([
            'name'     => 'required|string',
            'email' => 'nullable|email',
            'phone' => 'required|string',
            'address' => 'required|string',
            'password' => 'required',
            'login_permit' => 'required|in:allowed,blocked',
        ]);

        $parent = User::find($id);
        $parent->update([
            'name' => $validate['name'],
            'email' => $validate['email'],
            'phone' => $validate['phone'],
            'address' => $validate['address'],
            'password' => (strlen($request->password) < 20) ? Hash::make($validate['password']) : $parent->password,
            'login_permit' => $validate['login_permit'],
        ]);
        return back()->with('success', 'Guardian successfully updated');
    }

    // Delete a parent
    public function destroy($id)
    {
        $parent = User::find($id);
        if(!$parent){
            return back()->withErrors(['error' => 'Parent ID couldn\'t found']);
        }
        $parent->delete();
        return back()->with('success', 'Parent successfully deleted');
    }
}
