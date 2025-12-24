<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\EduClass;
use App\Models\StudentProfile;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class StudentController extends Controller
{
    //show student list
    public function index()
    {
        $students = StudentProfile::with('parent','user')->get();
        $student  = null;
        $parents  = User::where('role', 'guardian')->get();
        $class    = EduClass::all();
        return view(backend('pages.student'), compact('students', 'student', 'parents', 'class'));
    }

    // Store a new student
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name'                     => 'required|string|max:255',
            'reg_number'               => 'required|numeric|unique:student_profiles,reg_number',
            'age'                      => 'required|numeric|min:1',
            'phone'                    => 'nullable|string|max:20',
            'parent_id'                => 'required|exists:users,id',
            'edu_class_id'             => 'required|exists:edu_classes,id',
            'birth_certificate_number' => 'required|string',

            // Father
            'fa_name_en'               => 'required|string',
            'fa_name_bn'               => 'required|string',
            'fa_mobile'                => 'required|string',
            'fa_nid'                   => 'nullable|string',
            'fa_dob'                   => 'nullable|date',

            // Mother
            'mo_name_en'               => 'required|string',
            'mo_name_bn'               => 'required|string',
            'mo_mobile'                => 'required|string',
            'mo_nid'                   => 'nullable|string',
            'mo_dob'                   => 'nullable|date',

            // Address
            'division_id'              => 'required|exists:divisions,id',
            'district_id'              => 'required|exists:districts,id',
            'thana_id'                 => 'required|exists:thanas,id',
            'union_id'                 => 'required|exists:unions,id',
            'post'                     => 'nullable|string|max:255',
            'address'                  => 'nullable|string|max:255',
        ]);

        try {
            DB::beginTransaction();
            $student = User::create([
                'name'     => $request->name,
                'password' => Hash::make($request->password ?? '123456'),
                'role'     => 'student',
            ]);

            $student->assignRole('Student');

            $validated['student_id'] = $student->id;

            StudentProfile::create($validated);
            DB::commit();
            return redirect()->back()->with('success', 'Student created successfully!');
        } catch (\Throwable $th) {
            DB::rollBack();
            return back()->with('error', 'Invalid server error');
        }
    }

    // Show a single student
    public function show($id)
    {
        $students = StudentProfile::with('parent')->get();
        $student  = StudentProfile::with('parent', 'eduClass')->findOrFail($id);
        $parents  = User::where('role', 'guardian')->get();
        $class    = EduClass::all();
        return view(backend('pages.student'), compact('students', 'student', 'parents', 'class'));
    }

    // Update a student
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'name'                     => 'required|string|max:255',
            'reg_number'               => 'required|numeric|unique:student_profiles,reg_number,' . $id,
            'age'                      => 'required|numeric|min:1',
            'phone'                    => 'nullable|string|max:20',
            'parent_id'                => 'required|exists:users,id',
            'edu_class_id'             => 'required|exists:edu_classes,id',
            'birth_certificate_number' => 'required|string',

            // Father
            'fa_name_en'               => 'required|string',
            'fa_name_bn'               => 'required|string',
            'fa_mobile'                => 'required|string',
            'fa_nid'                   => 'nullable|string',
            'fa_dob'                   => 'nullable|date',

            // Mother
            'mo_name_en'               => 'required|string',
            'mo_name_bn'               => 'required|string',
            'mo_mobile'                => 'required|string',
            'mo_nid'                   => 'nullable|string',
            'mo_dob'                   => 'nullable|date',

            // Address
            'division_id'              => 'required|exists:divisions,id',
            'district_id'              => 'required|exists:districts,id',
            'thana_id'                 => 'required|exists:thanas,id',
            'union_id'                 => 'required|exists:unions,id',
            'post'                     => 'nullable|string|max:255',
            'address'                  => 'nullable|string|max:255',
        ]);

        if ($request->filled('password')) {
            $validated['password'] = Hash::make($validated['password']);
        } else {
            unset($validated['password']);
        }

        $student = StudentProfile::findOrFail($id);

        $student->update($validated);

        return redirect()->back()->with('success', 'Student updated successfully!');
    }

    // Delete a student
    public function destroy($id)
    {
        $student = StudentProfile::find($id);
        if (! $student) {
            return back()->withErrors(['error' => 'Student ID couldn\'t found']);
        }
        $student->delete();
        return back()->with('success', 'Student successfully deleted');
    }
}
