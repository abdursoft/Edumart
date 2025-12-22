<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ExamMarksheet;
use App\Models\ExamMarksheetItem;
use App\Models\Subject;
use Illuminate\Http\Request;

class MarksheetItemController extends Controller
{
    // List all items
    public function index($id=null)
    {
        $subjects = null;
        $exam_marksheet_id = null;
        $marksheets = null;
        if($id){
            $subject = ExamMarksheet::with('exam.examSubject.subject')->findOrFail($id);
            $exam_marksheet_id = $id;
            $allSubjects = $subject->exam->examSubject;

            $subjects = $allSubjects->mapWithKeys(function($subject){
                return [$subject->subject->id => $subject->subject->name];
            })->toArray();
        }

        $marksheets = ExamMarksheetItem::where('exam_marksheet_id', $id)->with('marksheet.exam')->orderBy('id','desc')->get();
        $marksheet = null;

        return view(backend('pages.mark-sheet-item'), compact('exam_marksheet_id', 'marksheets', 'subjects', 'marksheet'));
    }

    // Store new item
    public function store(Request $request)
    {
        $request->validate([
            'exam_marksheet_id' => 'required|exists:exam_marksheets,id',
            'subject_id'        => 'required|exists:subjects,id',
            'mcq_marks'         => 'nullable|integer|min:0',
            'writing_marks'     => 'nullable|integer|min:0',
            'practical_marks'   => 'nullable|integer|min:0',
            'attendance_marks'  => 'nullable|integer|min:0',
            'total_marks'       => 'nullable|integer|min:0',
            'is_passed'         => 'boolean',
            'grade'             => 'required|in:A,A+,A-,B,B+,B-,C,D,F'
        ]);

        try {
            ExamMarksheetItem::create($request->only('exam_marksheet_id','subject_id','mcq_marks','writing_marks','practical_marks','attendance_marks','total_marks','is_passed','grade'));

            return redirect()->back()->with('success', 'Marksheet item added successfully!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', 'Marksheet item could\'t added '.$th->getMessage());
        }
    }

    // Edit a single record
    public function show($id)
    {
        $item = ExamMarksheetItem::findOrFail($id);

        $subjects = null;
        $exam_marksheet_id = $item->exam_marksheet_id;
        $marksheets = null;
        if($item){
            $subject = ExamMarksheet::with('exam.examSubject.subject')->findOrFail($item->exam_marksheet_id);
            $exam_marksheet_id = $item->exam_marksheet_id;
            $allSubjects = $subject->exam->examSubject;

            $subjects = $allSubjects->mapWithKeys(function($subject){
                return [$subject->subject->id => $subject->subject->name];
            })->toArray();
        }

        $marksheets = ExamMarksheetItem::where('exam_marksheet_id', $item->exam_marksheet_id)->with('marksheet.exam')->orderBy('id','desc')->get();
        $marksheet = $item;

        return view(backend('pages.mark-sheet-item'), compact('marksheet', 'marksheets', 'subjects','exam_marksheet_id'));
    }

    // Update item
    public function update(Request $request, $id)
    {
        $request->validate([
            'exam_marksheet_id' => 'required|exists:exam_marksheets,id',
            'subject_id'        => 'required|exists:subjects,id',
            'mcq_marks'         => 'nullable|integer|min:0',
            'writing_marks'     => 'nullable|integer|min:0',
            'practical_marks'   => 'nullable|integer|min:0',
            'attendance_marks'  => 'nullable|integer|min:0',
            'total_marks'       => 'nullable|integer|min:0',
            'is_passed'         => 'boolean',
        ]);

        $examMarksheetItem = ExamMarksheetItem::findOrFail($id);

        try {
            $examMarksheetItem->update($request->only('exam_marksheet_id','subject_id','mcq_marks','writing_marks','practical_marks','attendance_marks','total_marks','is_passed','grade'));

            return redirect()->back()->with('success', 'Marksheet item updated successfully!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', 'Marksheet item could\'t update '.$th->getMessage());
        }
    }

    // Delete item
    public function destroy($id)
    {
        $marksheet = ExamMarksheetItem::findOrFail($id);
        if(!$marksheet){
            return redirect()->back()->with('error', 'Marksheet item couldn\'t delete');
        }
        $marksheet->delete();

        return redirect()->back()->with('success', 'Marksheet item deleted successfully!');
    }
}
