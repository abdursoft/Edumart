<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Exam;
use App\Models\Subject;
use App\Models\ClassRoom;
use App\Models\ExamSubject;
use Illuminate\Http\Request;

class ExamSubjectController extends Controller
{
    // List all exam subjects
    public function index()
    {
        $examSubjects = ExamSubject::with(['exam', 'subject', 'classRoom'])
            ->orderBy('exam_date')
            ->orderBy('start_time')
            ->get();

        $examSubject = null;
        $exams = Exam::with('eduClass')->get();
        $subjects = Subject::with('eduClass')->get();
        $rooms = ClassRoom::all();

        return view(backend('pages.exam-subject'), compact('examSubjects', 'examSubject', 'exams', 'subjects', 'rooms'));
    }

    // Store a new exam subject
    public function store(Request $request)
    {
        $request->validate([
            'exam_id'           => 'required|exists:exams,id',
            'subject_id'        => 'required|exists:subjects,id',
            'class_room_id'     => 'nullable|exists:class_rooms,id',
            'exam_date'         => 'required|date',
            'start_time'        => 'nullable|date_format:H:i',
            'end_time'          => 'nullable|date_format:H:i|after:start_time',
            'mcq_marks'         => 'nullable|integer|min:0',
            'writing_marks'     => 'nullable|integer|min:0',
            'practical_marks'   => 'nullable|integer|min:0',
            'attendance_marks'  => 'nullable|integer|min:0',
            'pass_marks'        => 'nullable|numeric|min:0',
            'total_marks'       => 'nullable|integer|min:0',
        ]);

        ExamSubject::create($request->only([
            'exam_id', 'subject_id', 'class_room_id', 'exam_date', 'start_time', 'end_time',
            'mcq_marks', 'writing_marks', 'practical_marks', 'attendance_marks', 'pass_marks', 'total_marks'
        ]));

        return redirect(route('admin.academic.evaluation.exam_subject'))
            ->with('success', 'Exam subject successfully created');
    }

    // Show a single exam subject
    public function show($id)
    {
        $examSubject = ExamSubject::findOrFail($id);
        $examSubjects = ExamSubject::with(['exam', 'subject', 'classRoom'])
            ->orderBy('exam_date')
            ->get();
        $exams = Exam::with('eduClass')->get();
        $subjects = Subject::with('eduClass')->get();
        $rooms = ClassRoom::all();

        return view(backend('pages.exam-subject'), compact('examSubject', 'examSubjects', 'exams', 'subjects', 'rooms'));
    }

    // Update
    public function update(Request $request, $id)
    {
        $request->validate([
            'exam_id'           => 'sometimes|required|exists:exams,id',
            'subject_id'        => 'sometimes|required|exists:subjects,id',
            'class_room_id'     => 'nullable|exists:class_rooms,id',
            'exam_date'         => 'sometimes|required|date',
            'start_time'        => 'nullable|date_format:H:i',
            'end_time'          => 'nullable|date_format:H:i|after:start_time',
            'mcq_marks'         => 'nullable|integer|min:0',
            'writing_marks'     => 'nullable|integer|min:0',
            'practical_marks'   => 'nullable|integer|min:0',
            'attendance_marks'  => 'nullable|integer|min:0',
            'pass_marks'        => 'nullable|numeric|min:0',
            'total_marks'       => 'nullable|integer|min:0',
        ]);

        $examSubject = ExamSubject::findOrFail($id);
        $examSubject->update($request->only([
            'exam_id', 'subject_id', 'class_room_id', 'exam_date', 'start_time', 'end_time',
            'mcq_marks', 'writing_marks', 'practical_marks', 'attendance_marks', 'pass_marks', 'total_marks'
        ]));

        return redirect(route('admin.academic.evaluation.exam_subject'))
            ->with('success', 'Exam subject successfully updated');
    }

    // Delete
    public function destroy($id)
    {
        $examSubject = ExamSubject::findOrFail($id);
        $examSubject->delete();

        return redirect(route('admin.academic.evaluation.exam_subject'))
            ->with('success', 'Exam subject successfully deleted');
    }
}
