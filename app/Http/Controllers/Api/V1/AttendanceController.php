<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Attendance;
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

        $validated['attendance_date'] = now()->format('Y-m-d');
        if($request->has('students')){
            foreach($request->students as $student){
                $validated['student_id'] = $student;
                $validated['status'] = 'Present';
                Attendance::create($validated);
            }
        }

        return redirect()->back()->with('success','Attendance submitted successfully');
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

        return redirect()->back()->with('success','Attendance updated successfully');
    }

    // Delete an attendance record
    public function destroy($attendance)
    {
        $attendance = Attendance::findOrFail($attendance);
        if(!$attendance){
            return redirect()->back()->with('error', 'Attendance not found!');
        }
        $attendance->delete();
        return redirect()->back()->with('success','Attendance deleted successfully');
    }
}
