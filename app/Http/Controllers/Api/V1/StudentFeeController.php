<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\EduClass;
use App\Models\FeeHead;
use App\Models\Invoice;
use App\Models\StudentFee;
use App\Models\StudentProfile;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentFeeController extends Controller
{
    /**
     * List student fees
     */
    public function index($id = null)
    {
        $fees = StudentFee::with(['student', 'feeHead', 'eduClass', 'eduSection', 'eduGroup'])
            ->latest()
            ->get();
        $fee = null;
        if ($id) {
            $fee = StudentFee::findOrFail($id);
        }
        $classes = EduClass::latest()->get()->pluck('name', 'id')->toArray();
        $heads   = FeeHead::latest()->get()->mapWithKeys(function ($head) {
            return [$head->id => $head->name . ' (' . $head->amount . ')'];
        })->toArray();
        return view(backend('pages.student-due'), compact('fees', 'fee', 'heads', 'classes'));
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

        try {
            $validate = $request->validate([
                'students'       => 'required|array',
                'fee_head_id'    => 'required|exists:fee_heads,id',
                'edu_class_id'   => 'required|exists:edu_classes,id',
                'edu_section_id' => 'required|exists:edu_sections,id',
                'edu_group_id'   => 'nullable',
                'due_date'       => 'nullable|date',
            ]);

            foreach ($validate['students'] as $student) {
                $user = StudentProfile::where('id', $student)->first();
                if ($user) {
                    DB::transaction(function () use ($validate, $user, $student) {
                        $invoice = Invoice::create([
                            'invoice_number' => "INV-".uniqueID(Invoice::class, 'invoice_number', 32),
                            'user_id' => $user->student_id,
                            'amount'     => $validate['fee_head_id'] ? FeeHead::find($validate['fee_head_id'])->amount : 0,
                            'status'     => 'pending',
                        ]);

                        StudentFee::create([
                            'invoice_id'     => $invoice->id,
                            'student_id'         => $user->student_id,
                            'student_profile_id' => $student,
                            'fee_head_id'        => $validate['fee_head_id'],
                            'edu_class_id'       => $validate['edu_class_id'],
                            'edu_section_id'     => $validate['edu_section_id'],
                            'edu_group_id'       => empty($validate['edu_group_id']) ? $user->edu_group_id : $validate['edu_group_id'],
                            'due_date'           => $validate['due_date'],
                            'status'             => 'Due',
                        ]);
                    });
                }
            }

            Toastr::success('Student fee added successfully', 'Success');
            return redirect()
                ->route('admin.finance.fees.student_due');
        } catch (\Throwable $th) {
            Toastr::error('Failed to add student fee: ' . $th->getMessage(), 'Error');
            return redirect()
                ->route('admin.finance.fees.student_due');
        }
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

        Toastr::success('Student fee updated successfully', 'Success');
        return redirect()
            ->route('student-fees.index');
    }

    /**
     * Delete student fee
     */
    public function destroy($id)
    {
        $studentFee = StudentFee::findOrFail($id);
        $studentFee->delete();

        Toastr::success('Student fee deleted successfully', 'Success');
        return redirect()
            ->route('admin.finance.fees.student_due');
    }

    /**
     * Mark fee as paid
     */
    public function markAsPaid(StudentFee $studentFee)
    {
        DB::transaction(function () use ($studentFee) {
            $studentFee->update(['status' => 'Paid']);
        });

        Toastr::success('Fee marked as paid', 'Success');
        return back();
    }

    /**
     * Get fee by invoice
     */
    public function getFee($invoice)
    {
        $fee = StudentFee::with('studentProfile', 'feeHead')->where('id', $invoice)->first();
        $student = $fee->studentProfile->load('eduClass', 'eduSection', 'eduGroup');
        $template = view(backend('components.cards.student'), compact('fee', 'student'))->render();
        return response()->json([
            'view' => $template,
            'head' => $fee->feeHead,
            'status' => empty($fee) ? 'failed' : 'success',
        ]);
    }
}
