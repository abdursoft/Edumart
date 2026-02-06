<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Attendance;
use App\Models\ClassRoutine;
use App\Models\Subject;
use Brian2694\Toastr\Facades\Toastr;
use Carbon\Carbon;
use Illuminate\Http\Request;

use function Symfony\Component\Clock\now;

class AttendanceController extends Controller
{
    // List all attendance records
    public function index()
    {
        return Attendance::with(['student', 'eduClass', 'subject'])
            ->orderBy('attendance_date', 'desc')
            ->get();
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


        dd($routine->eduClass->student);

        if($request->has('students') && $routine){
            foreach($request->students as $student){
                $validated['student_id'] = $student;
                $validated['status'] = 'Present';
                $validated['class_room_id'] = $routine->class_room_id;
                Attendance::create($validated);
            }
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
        $attendance->update($validated);
        Toastr::success('Attendance updated successfully','Success');
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
