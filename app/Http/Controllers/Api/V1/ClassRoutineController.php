<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ClassRoutine;
use App\Models\EduClass;
use App\Models\Subject;
use App\Models\ClassRoom;
use Illuminate\Http\Request;

class ClassRoutineController extends Controller
{
    // List all routines
    public function index()
    {
        $routines = ClassRoutine::with(['eduClass', 'subject', 'classRoom'])
        ->orderBy('day')
        ->orderBy('start_time')
        ->get();

        $routine = null;
        $classes = EduClass::orderBy('name')->get();
        $subjects = Subject::orderBy('name')->get();
        $rooms = ClassRoom::orderBy('name')->get();

        return view(backend('pages.routine'), compact('routine', 'routines', 'classes', 'subjects', 'rooms'));
    }

    // Store a new routine
    public function store(Request $request)
    {
        $request->validate([
            'edu_class_id' => 'required|exists:edu_classes,id',
            'routines' => 'required|array',
        ]);

        try {
            foreach ($request->routines as $dayRoutine) {
                $day = $dayRoutine['day'];
                foreach ($dayRoutine['subjects'] as $subject) {
                    ClassRoutine::create([
                        'edu_class_id' => $request->edu_class_id,
                        'subject_id' => $subject['subject_id'],
                        'day' => $day,
                        'start_time' => $subject['start_time'],
                        'end_time' => $subject['end_time'],
                        'class_room_id' => $subject['room'] ?? null,
                    ]);
                }
            }

            return redirect()->back()->with('success', 'Class routine created successfully!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', 'Class couldn\'t created '.$th->getMessage());
        }
    }


    // Show a single routine for editing
    public function show($id)
    {
        $routines = ClassRoutine::with(['eduClass', 'subject', 'classRoom'])
            ->orderBy('day')
            ->orderBy('start_time')
            ->get();

        $routine = ClassRoutine::findOrFail($id);
        $classes = EduClass::orderBy('name')->get();
        $subjects = Subject::orderBy('name')->get();
        $rooms = ClassRoom::orderBy('name')->get();

        return view(backend('pages.routine'), compact('routine', 'routines', 'classes', 'subjects', 'rooms'));
    }

    // Update a routine
    public function update(Request $request, $id)
    {
        $request->validate([
            'edu_class_id'  => 'sometimes|required|exists:edu_classes,id',
            'subject_id'    => 'sometimes|required|exists:subjects,id',
            'day'           => 'nullable|in:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',
            'start_time'    => 'nullable|date_format:H:i:s',
            'end_time'      => 'nullable|date_format:H:i:s|after:start_time',
            'class_room_id' => 'nullable|exists:class_rooms,id',
        ]);

        $routine = ClassRoutine::findOrFail($id);
        $routine->update($request->only('edu_class_id', 'subject_id', 'day', 'start_time', 'end_time', 'class_room_id'));

        return redirect(route('admin.academic.structure.routines'))
            ->with('success', 'Class routine successfully updated.');
    }

    // Delete a routine
    public function destroy($id)
    {
        $routine = ClassRoutine::findOrFail($id);

        if (!$routine) {
            return redirect(route('admin.academic.structure.routines'))
                ->with('error', 'Routine not found or could not be deleted.');
        }

        $routine->delete();

        return redirect(route('admin.academic.structure.routines'))
            ->with('success', 'Class routine successfully deleted.');
    }
}
