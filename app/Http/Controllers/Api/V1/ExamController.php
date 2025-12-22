<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\EduClass;
use App\Models\Exam;
use Illuminate\Http\Request;

class ExamController extends Controller
{
    // List all exams (index page)
    public function index()
    {
        $exams = Exam::with('eduClass')
            ->orderBy('year', 'desc')
            ->orderBy('name')
            ->get();

        $exam = null;
        $classes = EduClass::orderBy('order')->get();
        
        return view(backend('pages.exam'), compact('exam', 'exams', 'classes'));
    }

    // Store a new exam
    public function store(Request $request)
    {
        $request->validate([
            'name'         => 'required|string',
            'code'         => 'required|string|unique:exams,code',
            'year'         => 'required|digits:4|integer',
            'session'      => 'required|string',
            'edu_class_id' => 'required|exists:edu_classes,id',
            'status'       => 'required|in:Scheduled,Completed,Canceled',
            'type'         => 'required|in:Class Test,Mid-Term,Final,Quiz,Practical,Other',
            'start_date'   => 'nullable|date',
            'end_date'     => 'nullable|date|after_or_equal:start_date',
        ]);

        Exam::create($request->only(
            'name', 'code', 'year', 'session', 'edu_class_id', 'status', 'type', 'start_date', 'end_date'
        ));

        return redirect(route('admin.academic.evaluation.exams'))
            ->with('success', 'Exam successfully created');
    }

    // Show a single exam for edit
    public function show($id)
    {
        $exam = Exam::with('eduClass')->findOrFail($id);
        $exams = Exam::with('eduClass')
            ->orderBy('year', 'desc')
            ->orderBy('name')
            ->get();
        $classes = EduClass::orderBy('order')->get();

        return view(backend('pages.exam'), compact('exam', 'exams', 'classes'));
    }

    // Update an exam
    public function update(Request $request, $id)
    {
        $exam = Exam::findOrFail($id);

        $request->validate([
            'name'         => 'sometimes|required|string',
            'code'         => 'sometimes|required|string|unique:exams,code,' . $id,
            'year'         => 'nullable|digits:4|integer',
            'session'      => 'nullable|string',
            'edu_class_id' => 'sometimes|required|exists:edu_classes,id',
            'status'       => 'nullable|in:Scheduled,Completed,Canceled',
            'type'         => 'nullable|in:Class Test,Mid-Term,Final,Quiz,Practical,Other',
            'start_date'   => 'nullable|date',
            'end_date'     => 'nullable|date|after_or_equal:start_date',
        ]);

        $exam->update($request->only(
            'name', 'code', 'year', 'session', 'edu_class_id', 'status', 'type', 'start_date', 'end_date'
        ));

        return redirect(route('admin.academic.evaluation.exams'))
            ->with('success', 'Exam successfully updated');
    }

    // Delete an exam
    public function destroy($id)
    {
        $exam = Exam::findOrFail($id);

        if (!$exam) {
            return redirect(route('admin.academic.exams'))
                ->with('error', 'Exam not found or already deleted.');
        }

        $exam->delete();

        return redirect(route('admin.academic.evaluation.exams'))
            ->with('success', 'Exam successfully deleted');
    }
}
