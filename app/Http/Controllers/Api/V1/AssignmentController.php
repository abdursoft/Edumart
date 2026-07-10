<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Assignment;
use App\Models\EduClass;
use App\Models\Subject;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use PhpParser\Node\Expr\Assign;

class AssignmentController extends Controller
{

    // List all assignments
    public function index()
    {
        $assignments = Assignment::with(['eduClass', 'subject', 'teacher'])
            ->orderBy('id', 'desc')
            ->get();
        $assignment = null;
        $classes = EduClass::all();
        return view(backend('pages.assignment'),compact('assignment','assignments','classes'));
    }

    // Store a new assignment
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title'         => 'required|string',
            'description'   => 'nullable|string',
            'edu_class_id'  => 'required|exists:edu_classes,id',
            'subject_id'    => 'required|exists:subjects,id',
            'assigned_date' => 'required|date',
            'due_date'      => 'nullable|date|after_or_equal:assigned_date',
            'attachment'    => 'nullable|file|mimes:jpeg,jpg,png,pdf,mp4,webm,csv,xlxs',
            'status'        => 'required|in:Pending,Completed,Overdue',
        ]);

        $subject = Subject::with('teacher')->findOrFail($request->subject_id);
        if($subject){
            $validated['teacher_id'] = $subject->teacher->id;
        }

        if($request->hasFile('attachment')){
            $validated['attachment'] = Storage::disk('public')->put('assignments',$request->attachment);
        }


        Assignment::create($validated);
        Toastr::success('Assignment successfully assigned','Success');
        return redirect()->back();
    }

    // Show a single assignment
    public function show($id)
    {
        $assignment = Assignment::findOrFail($id);
        $assignments = Assignment::with(['eduClass', 'subject', 'teacher'])
            ->orderBy('id', 'desc')
            ->get();
        $classes = EduClass::all();
        return view(backend('pages.assignment'),compact('assignment','assignments','classes'));
    }

    // Update an assignment
    public function update(Request $request, $id)
    {
        $request->validate([
            'title'         => 'sometimes|required|string',
            'description'   => 'nullable|string',
            'edu_class_id'  => 'sometimes|required|exists:edu_classes,id',
            'subject_id'    => 'sometimes|required|exists:subjects,id',
            'assigned_date' => 'nullable|date',
            'due_date'      => 'nullable|date|after_or_equal:assigned_date',
            'attachment'    => 'nullable|string',
            'status'        => 'nullable|in:Pending,Completed,Overdue',
        ]);

        $assignment = Assignment::findOrFail($id);
        $subject = Subject::with('teacher')->findOrFail($request->subject_id);
        if($subject){
            $validated['teacher_id'] = $subject->teacher->id;
        }

        if($request->hasFile('attachment')){
            $validated['attachment'] = Storage::disk('public')->put('assignments',$request->attachment);
        }

        $assignment->update($validated);
        Toastr::success('Assignment successfully assigned','Success');
        return redirect()->back();
    }

    // Delete an assignment
    public function destroy($id)
    {
        $assignment = Assignment::find($id);

        if($assignment){
            $assignment->delete();
            Toastr::success('Assignment deleted successfully','Success');
        }else{
            Toastr::error('Assignment couldn\'t deleted','Not Found');
        }
        return redirect()->route('admin.academic.activities.assignments');
    }
}
