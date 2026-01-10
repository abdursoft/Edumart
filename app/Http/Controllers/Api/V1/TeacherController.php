<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Assignment;
use App\Models\Attendance;
use App\Models\ClassRoutine;
use App\Models\Designation;
use App\Models\EduClass;
use App\Models\Subject;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

use function Symfony\Component\Clock\now;

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

    /**
     * Show teacher dashboard
     */
    public function dashboard(){
        $profile = $this->profile;
        $now = Carbon::now();

        $routines = ClassRoutine::where('day', $now->format('l'))
        ->orderBy('start_time','asc')
        ->get()
        ->filter(function($routine) use ($profile){
            $subject = $routine->subject;
            return $subject->teacher_id == $profile->id;
        });

        $assignments = $profile->assignments;

        $subjects = Subject::where('teacher_id', $profile->id)->orderBy('edu_class_id')->get()->groupBy('edu_class_id');

        return view(theme('pages.teachers.dashboard'), compact('profile','subjects', 'routines', 'assignments'));
    }

    /**
     * Show subjects according the teacher profile
     */
    public function subjects(){
        $profile = $this->profile;
        return view(theme('pages.teachers.subjects'), compact('profile'));
    }

    /**
     * Show assignments according the teacher profile
     */
    public function assignments(){
        $profile = $this->profile;
        return view(theme('pages.teachers.assignment'), compact('profile'));
    }

    /**
     * Create new assignment
     */
    public function assignmentNew(Request $request, $assignment = null){
        if($assignment != null){
            $assignment = Assignment::findOrFail($assignment);
        }
        $classes = EduClass::orderBy('order')->get();
        $profile = $this->profile;

        return view(theme('pages.teachers.assignment-create'), compact('assignment', 'classes', 'profile'));
    }

    /**
     * Take attendance view
     */
    public function takeAttendance($sub, $class){
        $profile = $this->profile;
        $class = EduClass::findOrFail($class);
        $subject = Subject::findOrFail($sub);
        $students = $class->student()->orderBy('student_id')->get();
        $routine = ClassRoutine::where('subject_id',$sub)
                ->where('edu_class_id', $class->id)
                ->first();
        $attendance = Attendance::where('subject_id', $sub)
                    ->where('attendance_date', now()->format('Y-m-d'))
                    ->where('teacher_id', $profile->id)
                    ->where('edu_class_id', $class->id)
                    ->first();
        return view(theme('pages.teachers.attendance'), compact('profile','class', 'subject', 'students','attendance','routine'));
    }
}

