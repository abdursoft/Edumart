<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Designation;
use Illuminate\Http\Request;

class DesignationController extends Controller
{
    // List all designations
    public function index()
    {
        $designations = Designation::orderBy('name')->get();
        $designation = null;
        return view(backend('pages.designation'),compact('designations','designation'));
    }

    // Store a new designation
    public function store(Request $request)
    {
        $request->validate([
            'name'     => 'required|unique:designations,name',
            'category' => 'nullable|string',
            'level'    => 'nullable|string',
        ]);

        Designation::create($request->only('name', 'category', 'level'));

        return back()->with('success', 'Designation successfully created');
    }

    // Show a single designation
    public function show($id)
    {
        $designation = Designation::findOrFail($id)->toArray();
        $designations = Designation::orderBy('name')->get();
        return view(backend('pages.designation'),compact('designations','designation'));

    }

    // Update a designation
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'     => 'sometimes|required|unique:designations,name,' . $id,
            'category' => 'nullable|string',
            'level'    => 'nullable|string',
        ]);

        $designation = Designation::findOrFail($id);

        $designation->update($request->only('name', 'category', 'level'));

        return back()->with('success', 'Designation successfully updated');
    }

    // Delete a designation
    public function destroy($id)
    {
        $designation = Designation::findOrFail($id);
        if(!$designation){
            return back()->withErrors(['error' => 'Designation ID couldn\'t found']);
        }
        $designation->delete();
        return back()->with('success', 'Designation successfully deleted');
    }
}
