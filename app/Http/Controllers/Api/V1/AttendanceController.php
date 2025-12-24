<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Attendance;
use Illuminate\Http\Request;

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
        $request->validate([
            'student_id'      => 'required|exists:users,id',
            'edu_class_id'    => 'required|exists:edu_classes,id',
            'subject_id'      => 'nullable|exists:subjects,id',
            'attendance_date' => 'required|date',
            'status'          => 'required|in:Present,Absent,Late,Excused',
            'remarks'         => 'nullable|string',
        ]);

        $attendance = Attendance::create($request->all());

        return response()->json($attendance, 201);
    }

    // Show a single attendance record
    public function show(Attendance $attendance)
    {
        return $attendance->load(['student', 'eduClass', 'subject']);
    }

    // Update an attendance record
    public function update(Request $request, Attendance $attendance)
    {
        $request->validate([
            'student_id'      => 'sometimes|required|exists:student_profiles,id',
            'edu_class_id'    => 'sometimes|required|exists:edu_classes,id',
            'subject_id'      => 'nullable|exists:subjects,id',
            'attendance_date' => 'nullable|date',
            'status'          => 'nullable|in:Present,Absent,Late,Excused',
            'remarks'         => 'nullable|string',
        ]);

        $attendance->update($request->all());

        return response()->json($attendance);
    }

    // Delete an attendance record
    public function destroy(Attendance $attendance)
    {
        $attendance->delete();

        return response()->json(null, 204);
    }
}
