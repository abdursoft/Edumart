<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Department;
use Illuminate\Http\Request;

class DepartmentController extends Controller
{
    // List all departments
    public function index()
    {
        $departments = Department::all();
        $department = null;
        return view(backend('pages.department'),compact('departments','department'));
    }

    // Store a new department
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:departments,name',
            'code' => 'nullable|string',
            'description' => 'nullable|string',
        ]);

        Department::create($request->only('name', 'code', 'description'));

        return back()->with('success','Department successfully created');
    }

    // Show a single department
    public function show($id)
    {
        $departments = Department::all();
        $department = Department::findOrFail($id);
        return view(backend('pages.department'),compact('departments','department'));
    }

    // Update a department
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'sometimes|required|unique:departments,name,' . $id,
            'code' => 'nullable|string',
            'description' => 'nullable|string',
        ]);

        $department = Department::findOrFail($id);

        $department->update($request->only('name', 'code', 'description'));

        return back()->with('success','Department successfully updated');
    }

    // Delete a department
    public function destroy($id)
    {
        $department = Department::findOrFail($id);
        if(!$department){

            return back()->with('error','Department couldn\'t delete');
        }
        $department->delete();
        return back()->with('success','Department successfully deleted');
    }
}
