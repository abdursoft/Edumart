<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\LeaveManagement;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LeaveManagementController extends Controller
{
    /**
     * Display a list of leaves
     */
    public function index()
    {
        $leave = null;
        $leaves = LeaveManagement::with(['user', 'leavedBy'])
                    ->latest()
                    ->get();
        $users = User::whereNotIn('role',['user','student','guardian','parents','committee','chairman','governing','author','admin'])->get()->mapWithKeys(function($user){
            return [$user->id => $user->name." (".$user->role.")"];
        })->toArray();
        return view(backend('pages.leave'), compact('leave','leaves', 'users'));
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
            'user_id'    => 'required|exists:users,id',
        ]);

        LeaveManagement::create([
            'start_date' => $request->start_date,
            'end_date'   => $request->end_date,
            'reason'     => $request->reason,
            'user_id'    => $request->user_id,
            'leaved_by'  => Auth::id(),
        ]);

        return redirect()->route('admin.administration.leave_management')->with('success', 'User leaving request created successfully');
    }

    /**
     * Show a single leave
     */
    public function show($id)
    {
        $leave = LeaveManagement::findOrFail($id);
        $leaves = LeaveManagement::with(['user', 'leavedBy'])
                    ->latest()
                    ->get();
        $users = User::whereNotIn('role',['user','student','guardian','parents','committee','chairman','governing','author','admin'])->get()->mapWithKeys(function($user){
            return [$user->id => $user->name." (".$user->role.")"];
        })->toArray();
        return view(backend('pages.leave'), compact('leave','leaves', 'users'));
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
        $leave->update($request->only([
            'start_date',
            'end_date',
            'reason',
        ]));

        return redirect()->route('admin.administration.leave_management')->with('success', 'User leaving request updated successfully');
    }

    /**
     * Delete leave
     */
    public function destroy($id)
    {
        $leave = LeaveManagement::findOrFail($id);
        $leave->delete();

        return redirect()
            ->route('admin.administration.leave_management')
            ->with('success', 'Leave deleted successfully');
    }
}
