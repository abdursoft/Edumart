<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\EduClass;
use App\Models\EduSection;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class SectionController extends Controller
{
    // List all sections
    public function index($id=null)
    {
        $classes = EduClass::orderBy('id')->get()->pluck('name','id')->toArray();
        $section = null;
        if($id){
            $section = EduSection::findOrFail($id);
        }
        $sections = EduSection::with('eduClass')->get();
        return view(backend('pages.section'), compact('section','sections','classes'));
    }

    // Store a new subject
    public function store(Request $request)
    {
        $request->validate([
            'name'         => 'required|string|unique:edu_sections,name',
            'description'         => 'nullable|string',
            'edu_class_id' => 'required|exists:edu_classes,id',
        ]);

        EduSection::create($request->only('name','description','edu_class_id'));

        Toastr::success('Section created successfully', 'Success');
        return back();
    }

    // Show a single section
    public function show($id)
    {
        return $this->index($id);
    }

    // Update a section
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'         => 'required|string|exists:edu_sections,name,id,'.$id,
            'description'         => 'nullable|string',
            'edu_class_id' => 'required|exists:edu_classes,id',
        ]);

        $section = EduSection::findOrFail($id);
        $section->update($request->only('name','description','edu_class_id'));

        Toastr::success('Section updated successfully', 'Success');
        return redirect()->route('admin.academic.structure.sections');
    }

    // Delete a section
    public function destroy($id)
    {
        $section = EduSection::findOrFail($id);
        if(!$section){
            return back()->withErrors(['error' => 'Section ID couldn\'t found']);
        }
        $section->delete();

        Toastr::success('Section deleted successfully', 'Success');
        return redirect()->route('admin.academic.structure.sections');
    }
}
