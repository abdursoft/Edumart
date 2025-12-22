<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Department;
use App\Models\EduClass;
use Illuminate\Http\Request;

class EduClassController extends Controller
{
    // List all classes
    public function index()
    {
        $classes = EduClass::with('department')->orderBy('order')->get();
        $class = null;
        $departments = Department::orderBy('id','desc')->get();
        return view(backend('pages.class'), compact('class','classes','departments'));
    }

    // Store a new class
    public function store(Request $request)
    {
        $request->validate([
            'name'     => 'required|string',
            'section'  => 'nullable|string',
            'order'    => 'nullable|integer',
            'capacity' => 'nullable|integer',
            'total'    => 'nullable|integer',
            'department_id' => 'required|exists:departments,id'
        ]);

        EduClass::create($request->only('name', 'section', 'order', 'capacity', 'total','department_id'));
        return back()->with('success', 'Class successfully created');
    }

    // Show a single class
    public function show($id)
    {
        $classes = EduClass::with('department')->orderBy('order')->get();
        $class = EduClass::with('department')->findOrFail($id);
        $departments = Department::orderBy('id','desc')->get();
        return view(backend('pages.class'), compact('class','classes','departments'));
    }

    // Update a class
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'     => 'sometimes|required|string',
            'section'  => 'nullable|string',
            'order'    => 'nullable|integer',
            'capacity' => 'nullable|integer',
            'total'    => 'nullable|integer',
            'department_id' => 'required|exists:departments,id'
        ]);

        $eduClass = EduClass::findOrFail($id);
        $eduClass->update($request->only('name', 'section', 'order', 'capacity', 'total','department_id'));
         return back()->with('success', 'Class successfully updated');
    }

    // Delete a class
    public function destroy($id)
    {
        $eduClass = EduClass::findOrFail($id);
        if(!$eduClass){
            return back()->with('success', 'Class couldn\'t delete');
        }
        return back()->with('success', 'Class successfully deleted');
    }
}
