<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ExamFee;
use App\Models\Exam;
use App\Models\EduClass;
use Illuminate\Http\Request;

class ExamFeeController extends Controller
{
    // List all exam fees
    public function index()
    {
        $examFees = ExamFee::with(['exam'])
            ->orderBy('id', 'desc')
            ->get();

        $examFee = null;
        $exams = Exam::orderBy('year', 'desc')->get();

        return view(backend('pages.exam-fees'), compact('examFees', 'examFee', 'exams'));
    }

    // Store a new exam fee
    public function store(Request $request)
    {
        $request->validate([
            'exam_id'       => 'required|exists:exams,id',
            'amount'        => 'required|numeric|min:0',
            'late_fee'      => 'nullable|numeric|min:0',
            'due_date'      => 'nullable|date',
            'status'        => 'required|in:Active,Inactive',
        ]);

        ExamFee::create($request->only('exam_id','amount','late_fee','due_date','status'));

        return redirect(route('admin.academic.evaluation.exam_fee'))
            ->with('success', 'Exam Fee successfully created');
    }

    // Show edit form for one exam fee
    public function show($id)
    {
        $examFees = ExamFee::with(['exam'])
            ->orderBy('id', 'desc')
            ->get();

        $examFee = ExamFee::findOrFail($id);
        $exams = Exam::orderBy('year', 'desc')->get();

        return view(backend('pages.exam-fees'), compact('examFees', 'examFee', 'exams'));
    }

    // Update an existing exam fee
    public function update(Request $request, $id)
    {
        $request->validate([
            'exam_id'       => 'sometimes|required|exists:exams,id',
            'amount'        => 'required|numeric|min:0',
            'late_fee'      => 'nullable|numeric|min:0',
            'due_date'      => 'nullable|date',
            'status'        => 'required|in:Active,Inactive',
        ]);

        $examFee = ExamFee::findOrFail($id);
        $examFee->update($request->only('exam_id','amount','late_fee','due_date','status'));

        return redirect(route('admin.academic.evaluation.exam_fee'))
            ->with('success', 'Exam Fee successfully updated');
    }

    // Delete an exam fee
    public function destroy($id)
    {
        $examFee = ExamFee::findOrFail($id);

        if (!$examFee) {
            return redirect(route('admin.academic.evaluation.exam_fee'))
                ->with('error', 'Exam Fee could not be found');
        }

        $examFee->delete();

        return redirect(route('admin.academic.evaluation.exam_fee'))
            ->with('success', 'Exam Fee successfully deleted');
    }
}
