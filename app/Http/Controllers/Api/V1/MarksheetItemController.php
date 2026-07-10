<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ExamMarksheet;
use App\Models\ExamMarksheetItem;
use App\Models\ExamSubject;
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

        $marksheet = null;
        $marksheets = ExamMarksheetItem::where('exam_marksheet_id', $id)->with('marksheet.exam')->orderBy('id','desc')->get();

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
        ]);

        try {
            $item = ExamMarksheetItem::where('exam_marksheet_id', $request->exam_marksheet_id)
                ->where('subject_id', $request->subject_id)
                ->first();
            if($item){
                return redirect()->back()->with('error', 'This subject already exists!');
            }
            $marksheet = ExamMarksheet::with('exam')->findOrFail($request->exam_marksheet_id);
            $subject = ExamSubject::where('subject_id',$request->subject_id)->where('exam_id', $marksheet->exam_id)->first();
            $total = $request->mcq_marks + $request->practical_marks + $request->writing_marks + $request->attendance_marks;
            $percentage = ($total / $subject->total_marks) * 100;
            $grade = ($marksheet->exam->grade_type == 'CGPA') ? cgpaGradePoint($percentage) : gpaGradePoint($percentage);

            ExamMarksheetItem::create([
                'exam_marksheet_id' => $request->exam_marksheet_id,
                'subject_id'        => $request->subject_id,
                'mcq_marks'         => $request->mcq_marks,
                'writing_marks'     => $request->writing_marks,
                'practical_marks'   => $request->practical_marks,
                'attendance_marks'  => $request->attendance_marks,
                'obtain_marks'      => $total,
                'total_marks'       => $subject->total_marks,
                'grade'             => $grade[1],
                'grade_point'       => $grade[0],
                'is_passed'         => $grade[1] == 'F' ? 0 : 1,
            ]);

            (new MarksheetController())->generateMarksheet($request->exam_marksheet_id);

            return redirect()->back()->with('success', 'Marksheet item added successfully!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', 'Marksheet item could\'t added '.$th->getMessage());
        }
    }

    // Edit a single record
    public function show($id)
    {
        $item = ExamMarksheetItem::with('marksheet.exam.examSubject')->findOrFail($id);

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
        ]);

        $examMarksheetItem = ExamMarksheetItem::findOrFail($id);

        try {
            $marksheet = ExamMarksheet::with('exam.examResults')->findOrFail($request->exam_marksheet_id);
            $subject = ExamSubject::where('subject_id',$request->subject_id)->where('exam_id', $marksheet->exam_id)->first();
            $total = $request->mcq_marks + $request->practical_marks + $request->writing_marks + $request->attendance_marks;
            $percentage = ($total / $subject->total_marks) * 100;
            $grade = ($marksheet->exam->grade_type == 'CGPA') ? cgpaGradePoint($percentage) : gpaGradePoint($percentage);

            $examMarksheetItem->update([
                'exam_marksheet_id' => $request->exam_marksheet_id,
                'subject_id'        => $request->subject_id,
                'mcq_marks'         => $request->mcq_marks,
                'writing_marks'     => $request->writing_marks,
                'practical_marks'   => $request->practical_marks,
                'attendance_marks'  => $request->attendance_marks,
                'obtain_marks'      => $total,
                'total_marks'       => $subject->total_marks,
                'grade'             => $grade[1],
                'grade_point'       => $grade[0],
                'is_passed'         => $grade[1] == 'F' ? 0 : 1,
            ]);

            (new MarksheetController())->generateMarksheet($request->exam_marksheet_id);
            if(!empty($marksheet->exam->examResults()->latest()->first()->id)){
                (new ExamResultController)->generateResult($marksheet->exam->examResults()->latest()->first()->id, $marksheet->exam->id);
            }

            return redirect()->route('admin.academic.evaluation.mark_sheet.item', ['id' => $examMarksheetItem->exam_marksheet_id])->with('success', 'Marksheet item updated successfully!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', 'Marksheet item couldn\'t updated '.$th->getMessage());
        }
    }

    // Delete item
    public function destroy($id)
    {
        $marksheet = ExamMarksheetItem::findOrFail($id);
        if(!$marksheet){
            return redirect()->back()->with('error', 'Marksheet item couldn\'t delete');
        }
        $id = $marksheet->exam_marksheet_id;
        $marksheet->delete();

        return redirect()->route('admin.academic.evaluation.mark_sheet.item',['id' => $id])->with('success', 'Marksheet item deleted successfully!');
    }

    // get exam subject
    public function examSubject($subject,$marksheet){
        $marksheets = ExamMarksheet::findOrFail($marksheet);
        return ExamSubject::where('subject_id',$subject)->where('exam_id', $marksheets->exam_id)->first();
    }
}
