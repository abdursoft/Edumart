<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\LeaveManagement;
use App\Models\StaffAttendance;
use App\Models\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StaffAttendanceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $staffs = User::whereNotIn('role',['user','student','guardian','parents','committee','chairman','governing','author','admin'])->get()->groupBy('role');
        $attendance = StaffAttendance::where('attendance_date', now()->format('Y-m-d'))->where('status', 'Present')->pluck('user_id')->toArray();
        $leave = (new LeaveManagement)->userLeave('Administration');
        return view(backend('pages.attendance'), compact('staffs', 'attendance', 'leave'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'users'            => 'required|array',
            'remarks'          => 'nullable|string',
        ]);

        $staffs = User::whereNotIn('role',['user','student','guardian','parents','committee','chairman','governing','author','admin'])->get();
        foreach($staffs as $staff){
            StaffAttendance::updateOrCreate([
                'attendance_date' => now()->format('Y-m-d'),
                'user_id' => $staff->id
            ],[
                'user_id' => $staff->id,
                'status'  => 'Absent',
                'attendance_by' => Auth::id(),
                'attendance_date' => now()->format('Y-m-d')
            ]);
        }

        $present = StaffAttendance::where('attendance_date', now()->format('Y-m-d'))->pluck('user_id')->toArray();
        $leave = (new LeaveManagement)->userLeave('Administration');

        foreach($request->users as $key=>$user){
            if(in_array($user, $present) || in_array($user, $leave)){
                $person = StaffAttendance::where('attendance_date', now()->format('Y-m-d'))->where('user_id', $user)->first();
                $person->status = in_array($user, $present) ? 'Present' : 'Excuse';
                $person->attendance_edited_by = Auth::id();
                $person->save();
            }
        }

        Toastr::success('Attendance submitted successfully', 'Success');
        return back();
    }

    /**
     * Display the specified resource.
     */
    public function show(StaffAttendance $staffAttendance)
    {
        return $staffAttendance->load(['user', 'attendanceBy']);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        $request->validate([
            'users'            => 'required|array',
            'remarks'          => 'nullable|string',
        ]);

        $staffs = User::whereNotIn('role',['user','student','guardian','parents','committee','chairman','governing','author','admin'])->get();
        foreach($staffs as $staff){
            StaffAttendance::updateOrCreate([
                'attendance_date' => now()->format('Y-m-d'),
                'user_id' => $staff->id
            ],[
                'user_id' => $staff->id,
                'status'  => 'Absent',
                'attendance_by' => Auth::id(),
                'attendance_date' => now()->format('Y-m-d')
            ]);
        }

        $present = StaffAttendance::where('attendance_date', now()->format('Y-m-d'))->pluck('user_id')->toArray();
        $leave = (new LeaveManagement)->userLeave('Administration');

        foreach($request->users as $key=>$user){
            if(in_array($user, $present) || in_array($user, $leave)){
                $person = StaffAttendance::where('attendance_date', now()->format('Y-m-d'))->where('user_id', $user)->first();
                $person->status = in_array($user, $present) ? 'Present' : 'Excuse';
                $person->attendance_edited_by = Auth::id();
                $person->save();
            }
        }

        Toastr::success('Attendance updated successfully', 'Success');
        return back();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(StaffAttendance $staffAttendance)
    {
        $staffAttendance->delete();

        return response()->json([
            'message' => 'Attendance deleted successfully'
        ]);
    }
}
