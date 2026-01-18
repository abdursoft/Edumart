<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\StudentFee;
use App\Models\FeeHead;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentFeeController extends Controller
{
    /**
     * List student fees
     */
    public function index()
    {
        $studentFees = StudentFee::with(['student', 'feeHead'])
            ->latest()
            ->paginate(15);

        return view('fees.students.index', compact('studentFees'));
    }

    /**
     * Show create form
     */
    public function create()
    {
        $feeHeads = FeeHead::all();
        $students = \App\Models\User::where('role', 'student')->get();

        return view('fees.students.create', compact('feeHeads', 'students'));
    }

    /**
     * Store student fee
     */
    public function store(Request $request)
    {
        $request->validate([
            'student_id'  => 'required|exists:users,id',
            'fee_head_id' => 'required|exists:fee_heads,id',
            'amount'      => 'required|numeric|min:0',
            'status'      => 'required|in:Due,Paid,Partial',
            'due_date'    => 'nullable|date',
        ]);

        StudentFee::create($request->all());

        return redirect()
            ->route('student-fees.index')
            ->with('success', 'Student fee added successfully');
    }

    /**
     * Edit student fee
     */
    public function edit(StudentFee $studentFee)
    {
        $feeHeads = FeeHead::all();
        $students = \App\Models\User::where('role', 'student')->get();

        return view('fees.students.edit', compact('studentFee', 'feeHeads', 'students'));
    }

    /**
     * Update student fee
     */
    public function update(Request $request, StudentFee $studentFee)
    {
        $request->validate([
            'amount'   => 'required|numeric|min:0',
            'status'   => 'required|in:Due,Paid,Partial',
            'due_date' => 'nullable|date',
        ]);

        $studentFee->update($request->only([
            'amount',
            'status',
            'due_date',
        ]));

        return redirect()
            ->route('student-fees.index')
            ->with('success', 'Student fee updated successfully');
    }

    /**
     * Delete student fee
     */
    public function destroy(StudentFee $studentFee)
    {
        $studentFee->delete();

        return redirect()
            ->route('student-fees.index')
            ->with('success', 'Student fee deleted successfully');
    }

    /**
     * Mark fee as paid
     */
    public function markAsPaid(StudentFee $studentFee)
    {
        DB::transaction(function () use ($studentFee) {
            $studentFee->update(['status' => 'Paid']);
        });

        return back()->with('success', 'Fee marked as paid');
    }
}
