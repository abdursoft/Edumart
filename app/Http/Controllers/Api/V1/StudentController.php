<?php
namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\EduClass;
use App\Models\ParentModel;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class StudentController extends Controller
{
    //show student list
    public function index()
    {
        $students = Student::with('parent')->get();
        $student  = null;
        $parents  = ParentModel::all();
        $class    = EduClass::all();
        return view(backend('pages.student'), compact('students', 'student', 'parents', 'class'));
    }

    // Store a new student
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'student_id' => 'required|numeric|unique:students,student_id',
            'age' => 'required|numeric|min:1',
            'phone' => 'nullable|string|max:20',
            'parent_id' => 'required|exists:parent_models,id',
            'edu_class_id' => 'required|exists:edu_classes,id',
            'password' => 'required|string|min:6',
            'login_permit' => 'required|in:allowed,blocked',

            // Father
            'fa_name_en' => 'required|string',
            'fa_name_bn' => 'required|string',
            'fa_mobile' => 'required|string',
            'fa_nid' => 'nullable|string',
            'fa_dob' => 'nullable|date',

            // Mother
            'mo_name_en' => 'required|string',
            'mo_name_bn' => 'required|string',
            'mo_mobile' => 'required|string',
            'mo_nid' => 'nullable|string',
            'mo_dob' => 'nullable|date',

            // Address
            'division_id' => 'required|exists:divisions,id',
            'district_id' => 'required|exists:districts,id',
            'thana_id' => 'required|exists:thanas,id',
            'union_id' => 'required|exists:unions,id',
            'post' => 'nullable|string|max:255',
            'address' => 'nullable|string|max:255',
        ]);

        $validated['password'] = Hash::make($validated['password']);

        Student::create($validated);

        return redirect()->back()->with('success', 'Student created successfully!');
    }

    // Show a single student
    public function show($id)
    {
        $students = Student::with('parent')->get();
        $student  = Student::with('parent', 'eduClass')->findOrFail($id);
        $parents  = ParentModel::all();
        $class    = EduClass::all();
        return view(backend('pages.student'), compact('students', 'student', 'parents', 'class'));
    }

    // Update a student
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'student_id' => 'required|numeric|unique:students,student_id,' . $id,
            'age' => 'required|numeric|min:1',
            'phone' => 'nullable|string|max:20',
            'parent_id' => 'required|exists:parent_models,id',
            'edu_class_id' => 'required|exists:edu_classes,id',
            'password' => 'nullable|string|min:6',
            'login_permit' => 'required|in:allowed,blocked',

            // Father
            'fa_name_en' => 'required|string',
            'fa_name_bn' => 'required|string',
            'fa_mobile' => 'required|string',
            'fa_nid' => 'nullable|string',
            'fa_dob' => 'nullable|date',

            // Mother
            'mo_name_en' => 'required|string',
            'mo_name_bn' => 'required|string',
            'mo_mobile' => 'required|string',
            'mo_nid' => 'nullable|string',
            'mo_dob' => 'nullable|date',

            // Address
            'division_id' => 'required|exists:divisions,id',
            'district_id' => 'required|exists:districts,id',
            'thana_id' => 'required|exists:thanas,id',
            'union_id' => 'required|exists:unions,id',
            'post' => 'nullable|string|max:255',
            'address' => 'nullable|string|max:255',
        ]);

        if ($request->filled('password')) {
            $validated['password'] = Hash::make($validated['password']);
        } else {
            unset($validated['password']);
        }

        $student = Student::findOrFail($id);

        $student->update($validated);

        return redirect()->back()->with('success', 'Student updated successfully!');
    }

    // Delete a student
    public function destroy($id)
    {
        $student = Student::find($id);
        if (! $student) {
            return back()->withErrors(['error' => 'Student ID couldn\'t found']);
        }
        $student->delete();
        return back()->with('success', 'Student successfully deleted');
    }
}
