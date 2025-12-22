<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Exam;
use App\Models\ExamResult;
use Illuminate\Http\Request;

class ExamResultController extends Controller
{
    // List all results
    public function index()
    {
        $results = ExamResult::with('exam')
            ->orderBy('exam_id', 'desc')
            ->get();

        $result = null;
        $exams = Exam::orderBy('year', 'desc')->orderBy('name')->get();

        return view(backend('pages.exam-result'), compact('results', 'result', 'exams'));
    }

    // Store a new exam result
    public function store(Request $request)
    {
        $request->validate([
            'exam_id'   => 'required|exists:exams,id',
            'passed'    => 'nullable|integer|min:0',
            'failed'    => 'nullable|integer|min:0',
            'percentage'=> 'nullable|string',
            'status'    => 'required|in:published,private',
            'remarks'   => 'nullable|string',
        ]);

        ExamResult::create($request->only([
            'exam_id', 'passed', 'failed', 'percentage', 'status', 'remarks'
        ]));

        return redirect(route('admin.academic.evaluation.results'))
                ->with('success', 'Exam Result added successfully');
    }

    // Show a single result (for editing)
    public function show($id)
    {
        $results = ExamResult::with('exam')->orderBy('exam_id', 'desc')->get();
        $result = ExamResult::findOrFail($id);
        $exams = Exam::orderBy('year', 'desc')->orderBy('name')->get();

        return view(backend('pages.exam-result'), compact('results', 'result', 'exams'));
    }

    // Update a result
    public function update(Request $request, $id)
    {
        $request->validate([
            'exam_id'   => 'sometimes|required|exists:exams,id',
            'passed'    => 'nullable|integer|min:0',
            'failed'    => 'nullable|integer|min:0',
            'percentage'=> 'nullable|string',
            'status'    => 'nullable|in:published,private',
            'remarks'   => 'nullable|string',
        ]);

        $examResult = ExamResult::findOrFail($id);

        $examResult->update($request->only([
            'exam_id', 'passed', 'failed', 'percentage', 'status', 'remarks'
        ]));

        return redirect(route('admin.academic.evaluation.results'))
                ->with('success', 'Exam Result updated successfully');
    }

    // Delete a result
    public function destroy($id)
    {
        $examResult = ExamResult::findOrFail($id);
        $examResult->delete();

        return redirect(route('admin.academic.evaluation.results'))
                ->with('success', 'Exam Result deleted successfully');
    }
}
