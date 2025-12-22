<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\EduClass;
use App\Models\Subject;
use App\Models\User;
use Illuminate\Http\Request;

class SubjectController extends Controller
{
    // List all subjects
    public function index()
    {
        $subjects = Subject::with(['eduClass', 'teacher'])->get();
        $subject = null;
        $classes = EduClass::orderBy('id','desc')->get();
        $teachers = User::where('role','teacher')->orderBy('id','desc')->get();
        return view(backend('pages.subject'), compact('subject','subjects','classes','teachers'));
    }

    // Store a new subject
    public function store(Request $request)
    {
        $request->validate([
            'name'         => 'required|string',
            'code'         => 'nullable|string',
            'type'         => 'required|in:theory,lab,tech',
            'period'       => 'required|string',
            'edu_class_id' => 'required|exists:edu_classes,id',
            'teacher_id'   => 'nullable|exists:users,id',
        ]);

        Subject::create($request->only('name','code','type','period','edu_class_id','teacher_id'));

        return back()->with('success', 'Subject successfully created');
    }

    // Show a single subject
    public function show($id)
    {
        $subjects = Subject::with(['eduClass', 'teacher'])->get();
        $subject = Subject::with(['eduClass','teacher'])->findOrFail($id);
        $classes = EduClass::orderBy('id','desc')->get();
        $teachers = User::where('role','teacher')->orderBy('id','desc')->get();
        return view(backend('pages.subject'), compact('subject','subjects','classes','teachers'));
    }

    // Update a subject
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'         => 'sometimes|required|string',
            'code'         => 'nullable|string',
            'type'         => 'required|in:theory,lab,tech',
            'period'       => 'required|string',
            'edu_class_id' => 'sometimes|required|exists:edu_classes,id',
            'teacher_id'   => 'nullable|exists:users,id',
        ]);

        $subject = Subject::findOrFail($id);
        $subject->update($request->only('name','code','type','period','edu_class_id','teacher_id'));

        return back()->with('success', 'Subject successfully updated');
    }

    // Delete a subject
    public function destroy($id)
    {
        $subject = Subject::findOrFail($id);
        if(!$subject){
            return back()->withErrors(['error' => 'Subject ID couldn\'t found']);
        }
        $subject->delete();
        return back()->with('success', 'Subject successfully deleted');
    }
}
