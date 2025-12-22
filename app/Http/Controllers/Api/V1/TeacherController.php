<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Designation;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class TeacherController extends Controller
{
    //show teacher list
    public function index(){
        $teachers = User::with('designation')->where('role','teacher')->get();
        $teacher  = null;
        $designations = Designation::all();
        $items = $designations->pluck('name','id')->toArray();
        return view(backend('pages.teachers'), compact('teachers','teacher','designations'));
    }

    // Store a new teacher
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
            'role' => 'teacher',
            'name' => $validate['name'],
            'email' => $validate['email'],
            'serial' => $validate['serial'],
            'password' => Hash::make($validate['password']),
            'login_permit' => $validate['login_permit'],
            'designation_id' => $validate['designation_id']
        ]);
        return back()->with('success', 'Teacher successfully created');
    }

    // Show a single teacher
    public function show($id)
    {
        $teachers = User::with('designation')->where('role','teacher')->get();
        $teacher  = User::with('designation')->findOrFail($id);
        $designations = Designation::all();
        return view(backend('pages.teachers'), compact('teachers','teacher','designations'));

    }

    // Update a teacher
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

        $teacher = User::where('role','teacher')->find($id);
        $teacher->update([
            'role' => 'teacher',
            'name' => $validate['name'],
            'email' => $validate['email'],
            'serial' => $validate['serial'],
            'password' => (strlen($request->password) < 20) ? Hash::make($validate['password']) : $teacher->password,
            'login_permit' => $validate['login_permit'],
            'designation_id' => $validate['designation_id']
        ]);
        return back()->with('success', 'Teacher data successfully updated');
    }

    // Delete a teacher
    public function destroy($id)
    {
        $teacher = User::where('role','teacher')->find($id);
        if(!$teacher){
            return back()->withErrors(['error' => 'Teacher ID couldn\'t found']);
        }
        $teacher->delete();
        return back()->with('success', 'Teacher successfully deleted');
    }
}
