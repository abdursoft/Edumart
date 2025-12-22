<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Designation;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class StaffController extends Controller
{
    //show staff list
    public function index(){
        $staffs = User::with('designation')->where('role','staff')->get();
        $staff  = null;
        $designations = Designation::all();
        $items = $designations->pluck('name','id')->toArray();
        return view(backend('pages.staff'), compact('staffs','staff','designations'));
    }

    // Store a new staff
    public function store(Request $request)
    {
        $validate = $request->validate([
            'name'     => 'required|',
            'email' => 'nullable|email',
            'serial' => 'required|numeric',
            'password' => 'required|max:20',
            'login_permit' => 'required|in:allowed,blocked',
            'designation_id' => 'required|exists:designations,id',
        ]);


        User::create([
            'role' => 'staff',
            'name' => $validate['name'],
            'email' => $validate['email'],
            'serial' => $validate['serial'],
            'password' => Hash::make($validate['password']),
            'login_permit' => $validate['login_permit'],
            'designation_id' => $validate['designation_id']
        ]);
        return back()->with('success', 'Staff successfully created');
    }

    // Show a single staff
    public function show($id)
    {
        $staffs = User::with('designation')->where('role','staff')->get();
        $staff  = User::with('designation')->findOrFail($id);
        $designations = Designation::all();
        return view(backend('pages.staff'), compact('staffs','staff','designations'));

    }

    // Update a staff
    public function update(Request $request, $id)
    {
        $validate = $request->validate([
            'name'     => 'required|',
            'email' => 'nullable|email',
            'serial' => 'required|numeric',
            'password' => 'required',
            'login_permit' => 'required|in:allowed,blocked',
            'designation_id' => 'required|exists:designations,id',
        ]);

        $staff = User::where('role','staff')->find($id);
        $staff->update([
            'role' => 'staff',
            'name' => $validate['name'],
            'email' => $validate['email'],
            'serial' => $validate['serial'],
            'password' => (strlen($request->password) < 20) ? Hash::make($validate['password']) : $staff->password,
            'login_permit' => $validate['login_permit'],
            'designation_id' => $validate['designation_id']
        ]);
        return back()->with('success', 'Staff data successfully updated');
    }

    // Delete a staff
    public function destroy($id)
    {
        $staff = User::where('role','staff')->find($id);
        if(!$staff){
            return back()->withErrors(['error' => 'Staff ID couldn\'t found']);
        }
        $staff->delete();
        return back()->with('success', 'Staff successfully deleted');
    }
}
