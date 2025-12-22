<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Designation;
use App\Models\ParentModel;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class ParentController extends Controller
{
    //show parent list
    public function index(){
        $parents = ParentModel::all();
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


        ParentModel::create([
            'name' => $validate['name'],
            'email' => $validate['email'],
            'phone' => $validate['phone'],
            'address' => $validate['address'],
            'password' => Hash::make($validate['password']),
            'login_permit' => $validate['login_permit']
        ]);
        return back()->with('success', 'Guardian successfully created');
    }

    // Show a single parent
    public function show($id)
    {
        $parents = ParentModel::all();
        $parent  = ParentModel::findOrFail($id);
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

        $parent = ParentModel::find($id);
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
        $parent = ParentModel::find($id);
        if(!$parent){
            return back()->withErrors(['error' => 'Parent ID couldn\'t found']);
        }
        $parent->delete();
        return back()->with('success', 'Parent successfully deleted');
    }
}
