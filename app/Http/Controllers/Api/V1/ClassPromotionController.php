<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ClassPromotion;
use App\Models\EduClass;
use App\Models\Student;
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

        if($request->student_id == 0){
            $students = Student::where('edu_class_id', $request->from_class_id)->get();
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
            return back()
                ->with('success', 'All students promoted successfully.');
        }else{
            $student = Student::find($request->student_id);
            if(!$student || $student->edu_class_id != $request->from_class_id){
                return back()
                    ->with('error', 'Selected student does not belong to the from class.');
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

        $student->educ_class_id = $request->to_class_id;
        $student->save();

        return back()
            ->with('success', 'Student promoted successfully.');
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
            'student_id'     => 'required|exists:students,id',
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

        return back()
            ->with('success', 'Promotion updated successfully.');
    }

    // Delete promotion
    public function destroy($id)
    {
        $promotion = ClassPromotion::findOrFail($id);
        if(!$promotion){
            return redirect()->back()->with('error', 'Promotion not found.');
        }
        $promotion->delete();

        return redirect(route('admin.academic.evaluation.promotion'))
            ->with('success', 'Promotion deleted successfully.');
    }

    // Get students by class
    public function getStudent($id){
        $students = Student::where('edu_class_id', $id)->select('id','name')->get();
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
