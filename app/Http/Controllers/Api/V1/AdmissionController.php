<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Admission;
use Illuminate\Http\Request;

class AdmissionController extends Controller
{
    // List all admissions
    public function index()
    {
        return Admission::orderBy('created_at', 'desc')->get();
    }

    // Store a new admission
    public function store(Request $request)
    {
        $request->validate([
            'token' => 'required|string|unique:admissions,token',
            'student_id' => 'required|string',
            'name_bangla' => 'required|string',
            'name_english' => 'required|string',
            'birth_certificate_number' => 'required|string',
            'birth_date' => 'required|string',
            'gender' => 'required|string',
            'father_bangla' => 'required|string',
            'father_english' => 'required|string',
            'father_nid' => 'required|string',
            'father_birth_date' => 'required|string',
            'father_mobile' => 'required|string',
            'mother_bangla' => 'required|string',
            'mother_english' => 'required|string',
            'mother_nid' => 'required|string',
            'mother_birth_date' => 'required|string',
            'permanent_division' => 'required|string',
            'permanent_zilla' => 'required|string',
            'permanent_thana' => 'required|string',
            'permanent_union' => 'required|string',
            'permanent_post' => 'required|string',
            'permanent_address' => 'required|string',
            'current_division' => 'required|string',
            'current_zilla' => 'required|string',
            'current_thana' => 'required|string',
            'current_union' => 'required|string',
            'current_post' => 'required|string',
            'current_address' => 'required|string',
            'previous_division' => 'required|string',
            'previous_zilla' => 'required|string',
            'previous_thana' => 'required|string',
            'previous_institute' => 'required|string',
            'previous_result_type' => 'required|in:GPA,CGPA,Division,Class',
            'previous_passing_year' => 'required|string',
            'previous_technology' => 'required|string',
            'previous_exam' => 'required|string',
            'previous_registration' => 'required|string',
            'previous_result' => 'required|string',
            'guardian_relation' => 'required|string',
            'guardian_bangla' => 'required|string',
            'guardian_english' => 'required|string',
            'guardian_mobile' => 'required|string',
            'guardian_nid' => 'required|string',
            'guardian_birth_date' => 'required|string',
            'status' => 'nullable|in:pending,approved,rejected',
            'is_paid' => 'nullable|in:paid,unpaid',
            'payment_id' => 'nullable|string',
            'documents' => 'required|string',
            'photo' => 'nullable|string',
        ]);

        $admission = Admission::create($request->all());

        return response()->json($admission, 201);
    }

    // Show a single admission
    public function show(Admission $admission)
    {
        return $admission;
    }

    // Update an admission
    public function update(Request $request, Admission $admission)
    {
        $admission->update($request->all());
        return response()->json($admission);
    }

    // Delete an admission
    public function destroy(Admission $admission)
    {
        $admission->delete();
        return response()->json(null, 204);
    }
}
