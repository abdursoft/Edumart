<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Jobs\AdmissionRejectHandler;
use App\Jobs\AdmissionSuccessHandler;
use App\Models\Admission;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;
use Yajra\DataTables\Facades\DataTables;

class AdmissionController extends Controller
{
    // List all admissions
    public function index(Request $request)
    {
        if($request->ajax()){
            return $this->getList($request);
        }
        return view(backend('pages.admission'));
    }

    /**
     * Get Admission list
     */
    public function getList($request)
    {
        $query = Admission::query();

        if ($request->filled('keyword')) {
                $query->where(function ($q) use ($request) {
                    $q->where('name_english', 'like', "%{$request->keyword}%")
                    ->orWhere('father_english', 'like', "%{$request->keyword}%");
                });
            }

             if ($request->filled('startDate')) {
                $query->whereDate('created_at', '>=', $request->startDate);
            }

            if ($request->filled('endDate')) {
                $query->whereDate('created_at', '<=', $request->endDate);
            }

        return DataTables::of($query)
            ->addIndexColumn()
            ->addColumn('name_english', fn($row) => $row->name_english ?? '-')
            ->addColumn('gender', fn($row) => $row->gender ?? '-')
            ->addColumn('father_english', fn($row) => $row->father_english ?? '-')
            ->addColumn('father_mobile', fn($row) => $row->father_mobile ?? '-')
            ->addColumn('birth_certificate_number', fn($row) => $row->birth_certificate_number ?? '-')
            ->addColumn('birth_date', fn($row) => $row->birth_date ?? '-')
            ->addColumn('current_address', fn($row) => $row->current_address ?? '-')
            ->addColumn('previous_institute', fn($row) => $row->previous_institute ?? '-')
            ->addColumn('previous_exam', fn($row) => $row->previous_exam ?? '-')
            ->addColumn('previous_result', fn($row) => $row->previous_result ?? '-')
            ->addColumn('payment_id', fn($row) => $row->payment_id ?? '-')
            ->addColumn('photo', function($row){
                return $row->photo ? '<img onclick="previewImage(`'.asset(e($row->photo)).'`)" src="'.asset(e($row->photo)).'" width="50" class="rounded">' : '-';
            })
            ->addColumn('status', function($row){
                return $row->status == 'approved' ? '<span class="text-green-700 bg-green-200 text-sm rounded-[12px] px-2 py-1">Approved</span>' : ($row->status == 'rejected' ? '<span class="text-red-700 bg-red-200 text-sm rounded-[12px] px-2 py-1">Rejected</span>' : '<span class="text-slate-700 bg-gray-200 text-sm rounded-[12px] px-2 py-1">Pending</span>');
            })
            ->addColumn('is_paid', fn($row) => $row->is_paid ? 'Yes' : 'No')
            ->addColumn('created_at', fn($row) => $row->created_at ? $row->created_at->format('d F, Y') : '-')
            ->addColumn('action', function($row){
                return '<div class="flex items-center gap-1">
                                <a data-title="Approve" href="'. route('admin.admission.request.action',['id' => $row->id,'type' => 'approve']).'" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">'. icons('approve') .'</a>
                                <a data-title="Reject" href="'. route('admin.admission.request.action',['id' => $row->id,'type' => 'reject']) .'" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm(`Are you sure you want to delete this exam-subject`)">'.icons('reject') .'</a>
                                <a data-title="View" href="'. route('admin.admission.request.action',['id' => $row->id,'type' => 'view']) .'" target="_blank" class="py-1 px-2 rounded-[15px] md:shadow-md hover:bg-yellow-600 text-orange-600 hover:text-white transition">'. icons('view') .'</a>
                            </div>';
            })

            // filter column name
            ->filterColumn('name_english', function ($query, $keyword) {
                    $query->where('name_english', 'like', "%{$keyword}%");
                })

            ->filterColumn('father_english', function($query, $keyword){
                $query->where('father_english', 'like', "%{$keyword}%");
            })

            ->filterColumn('previous_institute', function($query, $keyword){
                $query->where('previous_institute', 'like', "%{$keyword}%");
            })

            ->filterColumn('payment_id', function($query, $keyword){
                $query->where('payment_id', 'like', "%{$keyword}%");
            })
            ->filterColumn('birth_certificate_number', function($query, $keyword){
                $query->where('birth_certificate_number', 'like', "%{$keyword}%");
            })
            ->filterColumn('birth_date', function($query, $keyword){
                $query->where('birth_date', 'like', "%{$keyword}%");
            })

            ->filterColumn('father_mobile', function($query, $keyword){
                $query->where('father_mobile', 'like', "%{$keyword}%");
            })

            ->rawColumns(['action', 'photo', 'status'])
            ->make(true);

    }


    // Store a new admission
    public function store(Request $request)
    {
        $validated = $request->validate([
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
            'guardian_relation' => 'nullable|string',
            'guardian_bangla' => 'required|string',
            'guardian_english' => 'required|string',
            'guardian_mobile' => 'required|string',
            'guardian_nid' => 'required|string',
            'guardian_birth_date' => 'required|string',
            'status' => 'nullable|in:pending,approved,rejected',
            'is_paid' => 'nullable|in:paid,unpaid',
            'payment_id' => 'nullable|string',
            'documents' => 'nullable|file|mimes:jpg,jpeg,png,webp,pdf,xlx',
            'photo' => 'nullable|file|mimes:png,jpg,jpeg,webp',
        ]);

        $imageExts = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'];
        $docExts = ['doc', 'pdf'];

        if ($request->hasFile('photo')) {
            $filename = $request->file('photo')->getBasename();
            $extension = strtolower($request->file('photo')->getClientOriginalExtension());


            $isImage = in_array($extension, $imageExts);

            $directory = public_path('admission/photo');
            if (!File::exists($directory)) {
                File::makeDirectory($directory, 0755, true);
            }

            if ($isImage) {

                $baseName = Str::uuid() . '_' . Str::slug(pathinfo($filename, PATHINFO_FILENAME));

                $finalName = "{$baseName}.webp";
                $finalPath = public_path("admission/photo/{$finalName}");

                $manager = new ImageManager(new Driver());
                $manager->read($request->file('photo'))
                    ->toWebp(85)
                    ->save($finalPath);
                $validated['photo'] = "admission/photo/{$finalName}";
            }
        }
        if ($request->hasFile('documents')) {
            $filename = $request->file('documents')->getBasename();
            $extension = strtolower($request->file('documents')->getClientOriginalExtension());

            $isDocs = in_array($extension, $docExts);

            $directory = public_path('admission/docs');
            if (!File::exists($directory)) {
                File::makeDirectory($directory, 0755, true);
            }

            if ($isDocs && $request->hasFile('documents')) {
                $path = $request->file('documents')
                    ->store('admission/docs', 'public');

                $validated['documents'] = $path;
            }
        }
        $validated['token'] = uniqueID(Admission::class, 'token', 22);
        $admission = Admission::create($validated);

        if ($request->acceptsJson()) {
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
    public function newAdmission(Request $request)
    {
        return view(theme('pages.admission'));
    }

    public function download($id)
    {
        $doc = Admission::findOrFail($id);

        return Storage::disk('public')->download($doc->documents);
    }


    /**
     * admission action
     */
    public function action($type, $id){
        $application = Admission::findOrFail($id);
        if($type == 'approve'){
            $application->status = 'approved';
            $application->save();
            AdmissionSuccessHandler::dispatch($application);
            Toastr::success('Admission request has been approved', 'Approved');
        }else if($type == 'reject'){
            $application->status = 'rejected';
            $application->save();
            AdmissionRejectHandler::dispatch($application);
            Toastr::error('Admission request rejected', 'Reject');
        }
        return redirect()->route('admin.admission.request');
    }
}
