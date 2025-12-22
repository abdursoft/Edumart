<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ExamMarksheet;
use App\Models\Exam;
use App\Models\Student;
use Illuminate\Http\Request;

class MarksheetController extends Controller
{
    // List all marksheets
    public function index()
    {
        $marksheets = ExamMarksheet::with(['exam', 'student'])
            ->orderBy('exam_id', 'desc')
            ->orderBy('student_id')
            ->get();

        $marksheet = null;
        $exams = Exam::with('eduClass')->orderBy('year', 'desc')->get();

        return view(backend('pages.mark-sheet'), compact('marksheet', 'marksheets', 'exams'));
    }

    // Store a new marksheet
    public function store(Request $request)
    {

        $request->validate([
            'exam_id'             => 'required|exists:exams,id',
            'student_id'          => 'required|exists:students,id',
            'total_marks_obtained'=> 'nullable|integer|min:0',
            'total_full_marks'    => 'nullable|integer|min:0',
            'percentage'          => 'nullable|numeric|min:0|max:100',
            'grade'               => 'nullable|string|max:5',
            'is_passed'           => 'required|boolean',
            'remarks'             => 'nullable|string|max:255',
            'status'              => 'required|in:Draft,Published',
            'grade'               => 'required|in:A,A+,A-,B,B+,B-,C,D,F'
        ]);


        ExamMarksheet::create($request->only(
            'exam_id',
            'student_id',
            'total_marks_obtained',
            'total_full_marks',
            'percentage',
            'grade',
            'is_passed',
            'remarks',
            'status'
        ));

        return redirect(route('admin.academic.evaluation.mark_sheet'))->with('success', 'Marksheet successfully created');
    }

    // Show a single marksheet for edit
    public function show($id)
    {
        $marksheets = ExamMarksheet::with(['exam', 'student'])
            ->orderBy('exam_id', 'desc')
            ->orderBy('student_id')
            ->get();

        $marksheet = ExamMarksheet::findOrFail($id);
        $exams = Exam::orderBy('year', 'desc')->get();

        return view(backend('pages.mark-sheet'), compact('marksheet', 'marksheets', 'exams'));
    }

    // Update a marksheet
    public function update(Request $request, $id)
    {
        $request->validate([
            'exam_id'             => 'sometimes|required|exists:exams,id',
            'student_id'          => 'sometimes|required|exists:students,id',
            'total_marks_obtained'=> 'nullable|integer|min:0',
            'total_full_marks'    => 'nullable|integer|min:0',
            'percentage'          => 'nullable|numeric|min:0|max:100',
            'grade'               => 'nullable|string|max:5',
            'is_passed'           => 'required|boolean',
            'remarks'             => 'nullable|string|max:255',
            'status'              => 'required|in:Draft,Published',
        ]);

        $marksheet = ExamMarksheet::findOrFail($id);
        $marksheet->update($request->only(
            'exam_id',
            'student_id',
            'total_marks_obtained',
            'total_full_marks',
            'percentage',
            'grade',
            'is_passed',
            'remarks',
            'status'
        ));

        return redirect(route('admin.academic.evaluation.mark_sheet'))->with('success', 'Marksheet successfully updated');
    }

    // Delete a marksheet
    public function destroy($id)
    {
        $marksheet = ExamMarksheet::findOrFail($id);

        if (!$marksheet) {
            return redirect(route('admin.academic.evaluation.mark_sheet'))->with('error', 'Marksheet not found');
        }

        $marksheet->delete();
        return redirect(route('admin.academic.evaluation.mark_sheet'))->with('success', 'Marksheet successfully deleted');
    }

    /**
     * Get student by exam id
     */
    public function getStudent($id){
        $exam = Exam::with('eduClass.student')->findOrFail($id);
        return $exam->eduClass->student->pluck('name','id')->toArray();
    }

    /**
     * Print mark sheet by id
     */
    public function printMarkSheet($id){
        $marksheet = ExamMarksheet::with('items.subject','student.parent','exam.eduClass')->findOrFail($id);

        $student = $marksheet->student;
        $exam = $marksheet->exam;
        $subjects = $marksheet->items;
        // dd($subjects);
        return view(backend('pages.mark-sheet-print'), compact('marksheet','student','exam','subjects'));
    }

}
