<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ClassRoom;
use Brian2694\Toastr\Facades\Toastr;
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
        Toastr::success('Room created successfully','Created');
        return redirect(route('admin.academic.structure.rooms'));
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
        Toastr::success('Room updated successfully','Updated');
        return redirect(route('admin.academic.structure.rooms'));
    }

    // Delete a classroom
    public function destroy($id)
    {
        $classRoom = ClassRoom::findOrFail($id);
        if(!$classRoom){
            Toastr::error('Room couldn\'t delete','Internal error');
            return redirect(route('admin.academic.structure.rooms'));
        }
        $classRoom->delete();
        Toastr::success('Room deleted successfully','Deleted');
        return redirect(route('admin.academic.structure.rooms'));
    }
}
