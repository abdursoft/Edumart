<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ExamAdmitCard;
use App\Models\Exam;
use App\Models\Student;
use App\Models\ClassRoom;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;

class ExamAdmitCardController extends Controller
{
    /**
     * Display all admit cards.
     */
    public function index()
    {
        $admitCards = ExamAdmitCard::with(['exam.eduClass','student'])
            ->latest('issue_date')
            ->get();

        $admitCard = null;
        $exams = Exam::all();

        return view(backend('pages.admit-card'), compact('admitCards', 'admitCard', 'exams',));
    }

    /**
     * Store a new admit card.
     */
    public function store(Request $request)
    {
        $request->validate([
            'exam_id'       => 'required|exists:exams,id',
            'issue_date'    => 'nullable|date',
            'status'        => 'required|in:Issued,Pending,Canceled',
        ]);

        $exam = Exam::with('eduClass.student')->findOrFail($request->exam_id);
        ExamAdmitCard::where('exam_id',$request->exam_id)->delete();
        foreach($exam->eduClass->student as $student){
            ExamAdmitCard::create([
                'exam_id' => $request->exam_id,
                'status' => $request->status,
                'issue_date' => $request->issue_date,
                'student_id' => $student->id
            ]);
        }

        return redirect()->route('admin.academic.evaluation.admit_cards')->with('success', 'Admit Card created successfully.');
    }

    /**
     * Show a specific admit card.
     */
    public function show($id){
        $admitCard = ExamAdmitCard::with('student','exam.eduClass','exam.examSubject.classRoom','exam.examSubject.subject')->findOrFail($id);
        $student = $admitCard->student;
        $exam = $admitCard->exam;
        $subjects = $exam->examSubject;
        return view(backend('pages.admit-card-view'), compact('admitCard','student','exam','subjects'));
    }

    /**
     * Edit a specific admit card.
     */
    public function edit($id)
    {
        $admitCard = ExamAdmitCard::with('student','exam.eduClass')->findOrFail($id);
        $admitCards = ExamAdmitCard::with(['exam', 'student'])->latest('issue_date')->get();
        $exams = Exam::all();

        return view(backend('pages.admit-card'), compact('admitCard', 'admitCards', 'exams'));
    }

    /**
     * Update a specific admit card.
     */
    public function update(Request $request, $id)
    {
        $admitCard = ExamAdmitCard::findOrFail($id);

        $request->validate([
            'exam_id'       => 'required|exists:exams,id',
            'student_id'    => 'required|exists:students,id',
            'issue_date'    => 'nullable|date',
            'status'        => 'required|in:Issued,Pending,Canceled',
        ]);

        $admitCard->update($request->all());

        return redirect()->route('admin.academic.evaluation.admit_cards')->with('success', 'Admit Card updated successfully.');
    }

    /**
     * Delete a specific admit card.
     */
    public function destroy($id)
    {
        $admitCard = ExamAdmitCard::findOrFail($id);
        $admitCard->delete();

        return redirect()->route('admin.academic.evaluation.admit_cards')->with('success', 'Admit Card deleted successfully.');
    }

    /**
     * Download admit card as PDF.
     */
    public function download($id)
    {
        $admitCard = ExamAdmitCard::with(['exam', 'student', 'classRoom'])->findOrFail($id);

        $pdf = Pdf::loadView(theme('components.partials.admit-card'), compact('admitCard'))
                  ->setPaper('A4', 'portrait');

        return $pdf->download('admit-card-' . $admitCard->student->name . '.pdf');
    }
}
