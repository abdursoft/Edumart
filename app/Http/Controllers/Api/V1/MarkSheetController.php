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
            'student_id'          => 'required|exists:student_profiles,id',
            'total_marks_obtained'=> 'nullable|integer|min:0',
            'total_full_marks'    => 'nullable|integer|min:0',
            'percentage'          => 'nullable|numeric|min:0|max:100',
            'grade'               => 'nullable|string|max:5',
            'is_passed'           => 'nullable|boolean',
            'remarks'             => 'nullable|string|max:255',
            'status'              => 'nullable|in:Draft,Published',
            'grade'               => 'nullable|in:A,A+,A-,B,B+,B-,C,D,F'
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
        $validate = $request->validate([
            'exam_id'             => 'sometimes|required|exists:exams,id',
            'student_id'          => 'sometimes|required|exists:student_profiles,id',
            'total_marks_obtained'=> 'nullable|integer|min:0',
            'total_full_marks'    => 'nullable|integer|min:0',
            'percentage'          => 'nullable|numeric|min:0|max:100',
            'grade'               => 'nullable|string|max:5',
            'is_passed'           => 'sometimes|boolean',
            'remarks'             => 'nullable|string|max:255',
            'status'              => 'nullable|in:Draft,Published',
        ]);

        $marksheet = ExamMarksheet::findOrFail($id);
        $marksheet->update($request->only('exam_id','student_id','remarks','status'));
        $this->generateMarksheet($id);

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
        return view(backend('pages.mark-sheet-print'), compact('marksheet'));
    }


    /**
     * Generate Marksheet
     */
    public function generateMarksheet($marksheetID){
        $marksheet = ExamMarksheet::findOrFail($marksheetID);
        if($marksheet){
            $totalPoints = 0;
            $totalCredits = 0;

            $subjectGrades = [];
            $percentage = [];

            foreach ($marksheet->items as $subject) {
                $item = $subject->marksheet->exam->examSubject()->where('subject_id', $subject->subject_id)->first();
                if($item){
                    $subjectGrades[] = $subject->grade;
                    $percent = ($subject->obtain_marks / $subject->total_marks) * 100;
                    $percentage[] = $percent;

                    $point = ($marksheet->exam->grade_type == 'CGPA') ? cgpaGradePoint($percent) : gpaGradePoint($percent);

                    $totalPoints += $point[0] * $item->credit_hours;
                    $totalCredits += $item->credit_hours;
                }
            }

            $gpa = ($totalCredits ? round($totalPoints / $totalCredits, 2) : 0);
            $grade = ($marksheet->exam->grade_type == 'CGPA') ? cgpaGradeLater($gpa) : gpaGradeLater($gpa);

            // dd($gpa);

            $marksheet->grade = (in_array('F', $subjectGrades)) ? 'F' : ($grade != 'F' ? $grade : 'F');
            $marksheet->is_passed = (in_array('F', $subjectGrades)) ? 0 : ($grade != 'F' ? 1 : 0);
            $marksheet->percentage = array_sum($percentage) / count($percentage);
            $marksheet->total_full_marks = $marksheet->items()->sum('total_marks');
            $marksheet->total_marks_obtained = $marksheet->items()->sum('obtain_marks');

            $marksheet->save();
        }
    }

}
