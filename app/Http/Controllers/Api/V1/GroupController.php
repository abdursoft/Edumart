<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\EduClass;
use App\Models\EduGroup;
use App\Models\EduSection;
use Illuminate\Http\Request;

class GroupController extends Controller
{
    // List all group
    public function index($id=null)
    {
        $sections = EduSection::with('eduClass')->orderBy('edu_class_id')->get()->mapWithKeys(function($section){
            return [$section->id => $section->name.' ('.$section->eduClass->name.')'];
        })->toArray();
        $group = null;
        if($id){
            $group = EduGroup::findOrFail($id);
        }
        $groups = EduGroup::with('eduSection.eduClass')->get();
        return view(backend('pages.group'), compact('group','groups','sections'));
    }

    // Store a new group
    public function store(Request $request)
    {
        $request->validate([
            'name'         => 'required|string',
            'description'  => 'nullable|string',
            'edu_section_id'  => 'required|exists:edu_sections,id',
        ]);

        EduGroup::create($request->only('name','description','edu_section_id'));

        return back()->with('success', 'Group successfully created');
    }

    // Show a single group
    public function show($id)
    {
        return $this->index($id);
    }

    // Update a group
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'         => 'required|string',
            'description'  => 'nullable|string',
            'edu_section_id'  => 'required|exists:edu_sections,id',
        ]);

        $group = EduGroup::findOrFail($id);
        $group->update($request->only('name','description','edu_section_id'));

        return redirect()->route('admin.academic.structure.groups')->with('success', 'Group successfully updated');
    }

    // Delete a group
    public function destroy($id)
    {
        $group = EduGroup::findOrFail($id);
        if(!$group){
            return back()->withErrors(['error' => 'Group ID couldn\'t found']);
        }
        $group->delete();
        return redirect()->route('admin.academic.structure.groups')->with('success', 'Group successfully deleted');
    }
}
