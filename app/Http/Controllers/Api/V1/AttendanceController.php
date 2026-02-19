<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Attendance;
use App\Models\ClassRoutine;
use App\Models\LeaveManagement;
use App\Models\StudentProfile;
use App\Models\Subject;
use App\Models\User;
use Brian2694\Toastr\Facades\Toastr;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use function Symfony\Component\Clock\now;

class AttendanceController extends Controller
{
    // List all attendance records
    public function index()
    {
        $attendances = Attendance::with(['student', 'eduClass', 'subject'])
            ->orderBy('attendance_date', 'desc')
            ->orderBy('edu_class_id', 'asc')
            ->get()
            ->groupBy('attendance_date');

        return view(backend('pages.attendance-student'), compact('attendances'));
    }

    // Store a new attendance record
    public function store(Request $request)
    {
        $validated = $request->validate([
            'teacher_id'      => 'required|exists:users,id',
            'edu_class_id'    => 'required|exists:edu_classes,id',
            'subject_id'      => 'nullable|exists:subjects,id',
            'remarks'         => 'nullable|string',
        ]);

        $now = now();

        $validated['attendance_date'] = now()->format('Y-m-d');
        $now = now()->format('H:i:s');

        $routine = ClassRoutine::with('eduClass')->where('subject_id', $request->subject_id)
            ->where('day', now()->format('l'))
            ->whereTime('start_time', '<=', $now)
            ->whereTime('end_time', '>=', $now)
            ->first();

        $students = StudentProfile::where('edu_class_id', $routine->edu_class_id)->get();
        $users = User::whereHas('student')
            ->whereIn('id', $request->students)
            ->get()
            ->pluck('student.id')
            ->toArray();
        $leave = (new LeaveManagement())->userLeave('Student');

        $todayAttendance = (new Attendance())->todayAttendance($request->subject_id, $request->teacher_id, $request->edu_class_id);

        if($request->has('students') && $routine){

            foreach($students as $student){
                if(!in_array($student->id, $todayAttendance)){
                    $validated['student_id'] = $student->id;
                    $validated['status'] = (in_array($student->id, $leave) || in_array($student->id, $users)) ? 'Present' : 'Absent';
                    $validated['class_room_id'] = $routine->class_room_id;
                    Attendance::create($validated);
                }
            }

            Attendance::where('edu_class_id', $request->edu_class_id)
                ->where('subject_id', $request->subject_id)
                ->where('teacher_id', $request->teacher_id)
                ->where('attendance_date', now()->format('Y-m-d'))
                ->whereIn('student_id', $users)
                ->get();

            Toastr::success('Attendance submitted successfully','Success');
            return redirect()->back();
        }
        Toastr::error('Class time is not started now, or something else!','Time is not accurate');
        return redirect()->back();

    }

    // Show a single attendance record
    public function show(Attendance $attendance)
    {
        return $attendance->load(['student', 'eduClass', 'subject']);
    }

    // Update an attendance record
    public function update(Request $request, $attendance)
    {
        $validated = $request->validate([
            'student_id'      => 'sometimes|required|exists:users,id',
            'edu_class_id'    => 'sometimes|required|exists:edu_classes,id',
            'subject_id'      => 'nullable|exists:subjects,id',
            'attendance_date' => 'nullable|date',
            'status'          => 'nullable|in:Present,Absent,Late,Excused',
            'remarks'         => 'nullable|string',
        ]);
        $attendance = Attendance::findOrFail($attendance);
        $leave = (new LeaveManagement())->userLeave('Student');
        $attendance->update($validated);
        Toastr::success('Attendance updated successfully','Success');
        return redirect()->back();
    }

    // attendance action for admin
    public function attendanceAction($type, $id){
        if(in_array(ucfirst($type), ['Present', 'Absent', 'Excuse'])){
            $attendance = Attendance::findOrFail($id);
            $attendance->status = ucfirst($type);
            $attendance->save();
            Toastr::success('Attendance updated successfully', 'Success');
            return redirect()->back();
        }
        Toastr::error('Invalid present action', 'Invalid action');
        return redirect()->back();
    }

    // Delete an attendance record
    public function destroy($attendance)
    {
        $attendance = Attendance::find($attendance);
        if(!$attendance){
            Toastr::success('Attendance couldn\'t deleted','Not Found');
            return redirect()->back();
        }
        $attendance->delete();
        Toastr::success('Attendance deleted successfully','Success');
        return redirect()->back();
    }
}
