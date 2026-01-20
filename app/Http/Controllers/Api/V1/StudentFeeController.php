<?php
namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\FeeHead;
use App\Models\StudentFee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentFeeController extends Controller
{
    /**
     * List student fees
     */
    public function index($id = null)
    {
        $fees = StudentFee::with(['student', 'feeHead'])
            ->latest()
            ->get();
        $fee = null;
        if ($id) {
            $fee = StudentFee::findOrFail($id);
        }
        $heads = FeeHead::latest()->get()->mapWithKeys(function ($head) {
            return [$head->id => $head->name . ' (' . $head->amount . ')'];
        })->toArray();
        return view(backend('pages.student-due'), compact('fees', 'fee', 'heads'));
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
            'student_id'     => 'required|exists:users,id',
            'fee_head_id'    => 'required|exists:fee_heads,id',
            'edu_class_id'   => 'required|exists:edu_classes,id',
            'edu_section_id' => 'required|exists:edu_section,id',
            'edu_group_id'   => 'required|exists:edu_groups,id',
            'amount'         => 'required|numeric|min:0',
            'status'         => 'required|in:Due,Paid,Partial',
            'due_date'       => 'nullable|date',
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
            'student_id'     => 'required|exists:users,id',
            'fee_head_id'    => 'required|exists:fee_heads,id',
            'edu_class_id'   => 'required|exists:edu_classes,id',
            'edu_section_id' => 'required|exists:edu_section,id',
            'edu_group_id'   => 'required|exists:edu_groups,id',
            'amount'         => 'required|numeric|min:0',
            'status'         => 'required|in:Due,Paid,Partial',
            'due_date'       => 'nullable|date',
        ]);

        $studentFee->update($request->only([
            'amount',
            'status',
            'due_date',
            'student_id',
            'fee_head_id',
            'edu_class_id',
            'edu_section_id',
            'edu_group_id',
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
