<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\LeaveManagement;
use App\Models\StudentProfile;
use App\Models\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LeaveManagementController extends Controller
{
    /**
     * Display a list of leaves
     */
    public function index($id=null)
    {
        $leave = null;
        $leaves = LeaveManagement::with(['user', 'leavedBy','student'])
                    ->latest()
                    ->get();
        if($id){
            $leave = LeaveManagement::findOrFail($id);
        }
        $users = User::whereNotIn('role',['user','student','guardian','parents','committee','chairman','governing','author','admin'])->get()->mapWithKeys(function($user){
            return [$user->id => $user->name." (".$user->role.") SL.". $user->serial];
        })->toArray();
        $students = StudentProfile::get()->mapWithKeys(function($student){
            return [$student->id => $student->name." (".$student->eduClass->name.") RL.". $student->class_roll];
        })->toArray();
        return view(backend('pages.leave'), compact('leave','leaves', 'users', 'students'));
    }

    /**
     * Show leave create form
     */
    public function create()
    {
        return view('leave.create');
    }

    /**
     * Store leave data
     */
    public function store(Request $request)
    {
        $request->validate([
            'start_date' => 'required|date',
            'end_date'   => 'required|date|after_or_equal:start_date',
            'reason'     => 'nullable|string',
            'user_id'    => 'nullable|exists:users,id',
            'student_id' => 'nullable',
            'user_type'  => 'required|in:Student,Administration'
        ]);

        LeaveManagement::create([
            'start_date' => $request->start_date,
            'end_date'   => $request->end_date,
            'reason'     => $request->reason,
            'user_type'  => $request->user_type,
            'user_id'    => $request->user_type == 'Student' ? Null : $request->user_id,
            'student_id' => $request->user_type == 'Student' ? $request->student_id : Null,
            'leaved_by'  => Auth::id(),
        ]);
        Toastr::success('Leaving request created successfully', 'Success');
        return redirect()->route('admin.administration.leave_management');
    }

    /**
     * Show a single leave
     */
    public function show($id)
    {
        return $this->index($id);
    }

    /**
     * Edit leave
     */
    public function edit(LeaveManagement $leave)
    {
        return view('leave.edit', compact('leave'));
    }

    /**
     * Update leave
     */
    public function update(Request $request,$id)
    {
        $request->validate([
            'start_date' => 'required|date',
            'end_date'   => 'required|date|after_or_equal:start_date',
            'reason'     => 'nullable|string',
        ]);

        $leave = LeaveManagement::findOrFail($id);
        $leave->update([
            'start_date' => $request->start_date,
            'end_date'   => $request->end_date,
            'reason'     => $request->reason,
            'user_type'  => $request->user_type,
            'user_id'    => $request->user_type == 'Student' ? Null : $request->user_id,
            'student_id' => $request->user_type == 'Student' ? $request->student_id : Null,
        ]);
        Toastr::success('Leaving request updated successfully', 'Success');
        return redirect()->route('admin.administration.leave_management');
    }

    /**
     * Delete leave
     */
    public function destroy($id)
    {
        $leave = LeaveManagement::findOrFail($id);
        $leave->delete();
        Toastr::success('Leaving request deleted successfully', 'Success');
        return redirect()
            ->route('admin.administration.leave_management');
    }
}
