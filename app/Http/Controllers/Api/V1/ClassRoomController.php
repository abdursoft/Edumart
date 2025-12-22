<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ClassRoom;
use Illuminate\Http\Request;

class ClassRoomController extends Controller
{
    // List all classrooms
    public function index()
    {
        $rooms = ClassRoom::orderBy('name')->get();
        $room = null;
        return view(backend('pages.room'), compact('room','rooms'));
    }

    // Store a new classroom
    public function store(Request $request)
    {
        $request->validate([
            'name'     => 'required|string',
            'code'     => 'required|integer|unique:class_rooms,code',
            'capacity' => 'nullable|integer',
            'location' => 'nullable|string',
            'type'     => 'required|in:Lecture,Lab,Auditorium',
        ]);

        ClassRoom::create($request->only('name','code','type','capacity','location'));

        return redirect(route('admin.academic.structure.rooms'))->with('success','Room successfully created');
    }

    // Show a single classroom
    public function show($id)
    {
        $rooms = ClassRoom::orderBy('name')->get();
        $room = ClassRoom::findOrFail($id);
        return view(backend('pages.room'), compact('room','rooms'));
    }

    // Update a classroom
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'     => 'sometimes|required|string',
            'code'     => 'sometimes|required|integer|unique:class_rooms,code,' . $id,
            'capacity' => 'nullable|integer',
            'location' => 'nullable|string',
            'type'     => 'nullable|in:Lecture,Lab,Auditorium',
        ]);
        $classRoom = ClassRoom::findOrFail($id);
        $classRoom->update($request->only('name','code','type','capacity','location'));

        return redirect(route('admin.academic.structure.rooms'))->with('success','Room successfully updated');
    }

    // Delete a classroom
    public function destroy($id)
    {
        $classRoom = ClassRoom::findOrFail($id);
        if(!$classRoom){
            return redirect(route('admin.academic.structure.rooms'))->with('error','Room couldn\'t create');
        }
        $classRoom->delete();
        return redirect(route('admin.academic.structure.rooms'))->with('success','Room successfully deleted');
    }
}
