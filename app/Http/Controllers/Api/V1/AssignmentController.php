<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Assignment;
use Illuminate\Http\Request;

class AssignmentController extends Controller
{
    // List all assignments
    public function index()
    {
        return Assignment::with(['eduClass', 'eduGroup', 'subject', 'teacher'])
            ->orderBy('assigned_date', 'desc')
            ->get();
    }

    // Store a new assignment
    public function store(Request $request)
    {
        $request->validate([
            'title'         => 'required|string',
            'description'   => 'nullable|string',
            'edu_class_id'  => 'required|exists:edu_classes,id',
            'edu_group_id'  => 'nullable|exists:edu_groups,id',
            'subject_id'    => 'required|exists:subjects,id',
            'teacher_id'    => 'required|exists:users,id',
            'assigned_date' => 'required|date',
            'due_date'      => 'nullable|date|after_or_equal:assigned_date',
            'attachment'    => 'nullable|string',
            'status'        => 'required|in:Pending,Completed,Overdue',
        ]);

        $assignment = Assignment::create($request->all());

        return response()->json($assignment, 201);
    }

    // Show a single assignment
    public function show(Assignment $assignment)
    {
        return $assignment->load(['eduClass', 'subject', 'teacher']);
    }

    // Update an assignment
    public function update(Request $request, Assignment $assignment)
    {
        $request->validate([
            'title'         => 'sometimes|required|string',
            'description'   => 'nullable|string',
            'edu_class_id'  => 'sometimes|required|exists:edu_classes,id',
            'subject_id'    => 'sometimes|required|exists:subjects,id',
            'teacher_id'    => 'sometimes|required|exists:users,id',
            'assigned_date' => 'nullable|date',
            'due_date'      => 'nullable|date|after_or_equal:assigned_date',
            'attachment'    => 'nullable|string',
            'status'        => 'nullable|in:Pending,Completed,Overdue',
        ]);

        $assignment->update($request->all());

        return response()->json($assignment);
    }

    // Delete an assignment
    public function destroy(Assignment $assignment)
    {
        $assignment->delete();

        return response()->json(null, 204);
    }
}
