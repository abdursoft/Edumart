<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ClassPromotion;
use App\Models\EduClass;
use App\Models\Student;
use App\Models\StudentProfile;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class ClassPromotionController extends Controller
{
    // Show all promotions
    public function index()
    {
        $promotions = ClassPromotion::with(['student', 'fromClass', 'toClass'])
            ->orderBy('id', 'desc')
            ->get();

        $promotion = null;
        $classes = EduClass::orderBy('name')->get();

        return view(backend('pages.class-promotion'), compact('promotions', 'promotion', 'classes'));
    }

    // Store promotion
    public function store(Request $request)
    {
        $request->validate([
            'student_id'     => 'required',
            'from_class_id'  => 'required|exists:edu_classes,id',
            'to_class_id'    => 'required|exists:edu_classes,id',
            'status'         => 'required|in:passed,failed,promoted,repeat',
            'remarks'        => 'nullable|string',
            'promotion_date' => 'nullable|date',
        ]);

        if($request->from_class_id == $request->to_class_id && $request->status == 'promoted'){
            Toastr::error('Student couldn\'t promoted in the same class','Same class');
            return redirect()->back();
        }

        if($request->student_id == 0){
            $students = StudentProfile::where('edu_class_id', $request->from_class_id)->get();
            foreach($students as $student){
                ClassPromotion::create([
                    'student_id'     => $student->id,
                    'from_class_id'  => $request->from_class_id,
                    'to_class_id'    => $request->to_class_id,
                    'status'         => $request->status,
                    'remarks'        => $request->remarks,
                    'promotion_date' => $request->promotion_date,
                ]);
                $student->edu_class_id = $request->to_class_id;
                $student->save();
            }
            Toastr::success('Student promoted successfully','Success');
            return redirect()->back();
        }else{
            $student = StudentProfile::find($request->student_id);
            if(!$student || $student->edu_class_id != $request->from_class_id){
                Toastr::error('Selected student does not belong to the from class.','Internal error');
                return redirect()->back();
            }
        }

        ClassPromotion::create([
            'student_id'     => $request->student_id,
            'from_class_id'  => $request->from_class_id,
            'to_class_id'    => $request->to_class_id,
            'status'         => $request->status,
            'remarks'        => $request->remarks,
            'promotion_date' => $request->promotion_date,
        ]);

        $student->edu_class_id = $request->to_class_id;
        $student->save();

        Toastr::success('Student promoted successfully','Success');
        return redirect()->back();
    }

    // Show one record
    public function show($id)
    {
        $promotions = ClassPromotion::with(['student', 'fromClass', 'toClass'])
            ->orderBy('id', 'desc')
            ->get();

        $promotion = ClassPromotion::findOrFail($id);
        $classes = EduClass::orderBy('name')->get();

        return view(backend('pages.class-promotion'), compact('promotions', 'promotion', 'classes'));
    }

    // Update promotion
    public function update(Request $request, $id)
    {
        $request->validate([
            'student_id'     => 'required|exists:student_profiles,student_id',
            'from_class_id'  => 'required|exists:edu_classes,id',
            'to_class_id'    => 'required|exists:edu_classes,id',
            'status'         => 'required|in:passed,failed,promoted,repeat',
            'remarks'        => 'nullable|string',
            'promotion_date' => 'nullable|date',
        ]);

        $promotion = ClassPromotion::findOrFail($id);

        $promotion->update([
            'student_id'     => $request->student_id,
            'from_class_id'  => $request->from_class_id,
            'to_class_id'    => $request->to_class_id,
            'status'         => $request->status,
            'remarks'        => $request->remarks,
            'promotion_date' => $request->promotion_date,
        ]);

        Toastr::success('Student promotion updated successfully','Success');
        return redirect()->back();
    }

    // Delete promotion
    public function destroy($id)
    {
        $promotion = ClassPromotion::findOrFail($id);
        if(!$promotion){
            Toastr::error('Student promotion not found','Not Found');
            return redirect()->back();
        }
        $promotion->delete();
        Toastr::success('Student promotion deleted successfully','Success');
        return redirect(route('admin.academic.evaluation.promotion'));
    }

    // Get students by class
    public function getStudent($id){
        $students = StudentProfile::where('edu_class_id', $id)->select('id','name')->get();
        $list = [];
        $list[] = ['id' => '0', 'name' => 'All Student'];
        foreach($students as $student){
            $list[] = [
                'id' => $student->id,
                'name' => $student->name,
            ];
        }
        return response()->json($list);
    }
}
