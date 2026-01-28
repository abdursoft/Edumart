<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Admission;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class AdmissionController extends Controller
{
    // List all admissions
    public function index($id = null)
    {
        $applications = Admission::latest()->get();
        $application  = null;
        if ($id) {
            $application = Admission::findOrFail($id);
        }
        return view(backend('pages.admission'), compact('applications', 'application'));
    }

    // Store a new admission
    public function store(Request $request)
    {
        $validated = $request->validate([
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

        $imageExts = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'];
        $docExts = ['doc', 'pdf'];

        if ($request->hasFile('photo')) {
            $filename = $request->file('photo')->getBasename();
            $extension = strtolower(pathinfo($filename, PATHINFO_EXTENSION));


            $isImage = in_array($extension, $imageExts);
            $isDocs = in_array($extension, $docExts);


            if ($isImage) {
                $directory = 'admission/photo';
                Storage::disk('public')->makeDirectory($directory);

                $baseName = Str::uuid() . '_' . Str::slug(pathinfo($filename, PATHINFO_FILENAME));

                $finalName = "{$baseName}.webp";
                $finalPath = "{$directory}/{$finalName}";
                $manager = new ImageManager(new Driver());
                $manager->read($request->file('photo'))
                    ->toWebp(85)
                    ->save(Storage::disk('public')->path($finalPath));
                $validated['photo'] = $finalPath;
            }

            if($request->hasFile('documents')){
                $filename = $request->file('documents')->getBasename();
                $extension = strtolower(pathinfo($filename, PATHINFO_EXTENSION));

                $isDocs = in_array($extension, $docExts);

                if($isDocs){
                    $path = Storage::disk('public')->put('admission/docs',$request->file('documents'));
                    $validated['documents'] = $path;
                }
            }
        }

        $admission = Admission::create($validated);

        if($request->acceptsJson()){
            return response()->json($admission, 201);
        }
        return redirect()->route('admin.public.admission_form')->with('success', 'Admission created successfully');
    }

    // Show a single admission
    public function show($id)
    {
        return Admission::findOrFail($id);
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

    /**
     * New student admission
     */
    public function newAdmission(Request $request){
        return view(theme('pages.admission'));
    }
}
