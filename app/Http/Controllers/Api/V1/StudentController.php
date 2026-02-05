<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Attendance;
use App\Models\EduClass;
use App\Models\Exam;
use App\Models\ExamAdmitCard;
use App\Models\StudentFee;
use App\Models\StudentProfile;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

use function Symfony\Component\Clock\now;

class StudentController extends Controller
{

    //show student list
    public function index()
    {
        $students = StudentProfile::with('parent','user')->get();
        $student  = null;
        $parents  = User::where('role', 'guardian')->get();
        $class    = EduClass::all();
        return view(backend('pages.student'), compact('students', 'student', 'parents', 'class'));
    }

    // Store a new student
    public function store(Request $request)
    {
        // dd($request->input());
        $validated = $request->validate([
            'name'                     => 'required|string|max:255',
            'age'                      => 'required|numeric|min:1',
            'dob'                      => 'nullable',
            'phone'                    => 'nullable|string|max:20',
            'parent_id'                => 'required|exists:users,id',
            'birth_certificate_number' => 'required|string',
            'avatar'                   => 'required|image|mimes:jpeg,jpg,png,webp',

            'reg_number'               => 'required|numeric|unique:student_profiles,reg_number',
            'edu_class_id'             => 'required|exists:edu_classes,id',
            'edu_section_id'           => 'required|exists:edu_sections,id',
            'edu_group_id'             => 'required|exists:edu_groups,id',

            // Father
            'fa_name_en'               => 'required|string',
            'fa_name_bn'               => 'required|string',
            'fa_mobile'                => 'required|string',
            'fa_nid'                   => 'nullable|string',
            'fa_dob'                   => 'nullable|date',

            // Mother
            'mo_name_en'               => 'required|string',
            'mo_name_bn'               => 'required|string',
            'mo_mobile'                => 'required|string',
            'mo_nid'                   => 'nullable|string',
            'mo_dob'                   => 'nullable|date',

            // Address
            'division_id'              => 'required|exists:divisions,id',
            'district_id'              => 'required|exists:districts,id',
            'thana_id'                 => 'required|exists:thanas,id',
            'union_id'                 => 'required|exists:unions,id',
            'post'                     => 'nullable|string|max:255',
            'address'                  => 'nullable|string|max:255',
        ]);


        try {
            DB::beginTransaction();
            $student = User::create([
                'name'     => $request->name,
                'password' => Hash::make($request->password ?? '123456'),
                'role'     => 'student',
            ]);

            $student->assignRole('Student');

            $validated['student_id'] = $student->id;

            if($request->hasFile('avatar')){
                $file = $request->file('avatar');

                $dir = public_path('uploads');

                if (!File::exists($dir)) {
                    File::makeDirectory($dir, 0755, true);
                }

                $filename = uniqid() . '.webp';
                $path = public_path('uploads/' . $filename);

                $manager = new ImageManager(new Driver());

                $manager->read($file)
                    ->resize(1200, null, function ($constraint) {
                        $constraint->aspectRatio();
                        $constraint->upsize();
                    })
                    ->toWebp(80)
                    ->save($path);
                $validated['avatar'] = 'uploads/' . $filename;
            }

            StudentProfile::create($validated);
            DB::commit();
            return redirect()->back()->with('success', 'Student created successfully!');
        } catch (\Throwable $th) {
            DB::rollBack();
            dd($th->getMessage());
            return back()->with('error', 'Invalid server error');
        }
    }

    // Show a single student
    public function show($id)
    {
        $students = StudentProfile::with('parent')->get();
        $student  = StudentProfile::with('parent', 'eduClass')->findOrFail($id);
        $parents  = User::where('role', 'guardian')->get();
        $class    = EduClass::all();
        return view(backend('pages.student'), compact('students', 'student', 'parents', 'class'));
    }

    // Update a student
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'name'                     => 'required|string|max:255',
            'age'                      => 'required|numeric|min:1',
            'dob'                      => 'nullable',
            'phone'                    => 'nullable|string|max:20',
            'parent_id'                => 'required|exists:users,id',
            'birth_certificate_number' => 'required|string',

            'reg_number'               => 'required|numeric|unique:student_profiles,reg_number,' . $id,
            'edu_class_id'             => 'required|exists:edu_classes,id',
            'edu_section_id'           => 'required|exists:edu_sections,id',
            'edu_group_id'             => 'required|exists:edu_groups,id',

            // Father
            'fa_name_en'               => 'required|string',
            'fa_name_bn'               => 'required|string',
            'fa_mobile'                => 'required|string',
            'fa_nid'                   => 'nullable|string',
            'fa_dob'                   => 'nullable|date',

            // Mother
            'mo_name_en'               => 'required|string',
            'mo_name_bn'               => 'required|string',
            'mo_mobile'                => 'required|string',
            'mo_nid'                   => 'nullable|string',
            'mo_dob'                   => 'nullable|date',

            // Address
            'division_id'              => 'required|exists:divisions,id',
            'district_id'              => 'required|exists:districts,id',
            'thana_id'                 => 'required|exists:thanas,id',
            'union_id'                 => 'required|exists:unions,id',
            'post'                     => 'nullable|string|max:255',
            'address'                  => 'nullable|string|max:255',
        ]);

        $student = StudentProfile::findOrFail($id);

        if ($request->filled('password') && $student) {
            $student->user->password = Hash::make($request->password);
            $student->user->save();
        }

        if($request->hasFile('avatar')){
                $file = $request->file('avatar');

                $dir = public_path('uploads');

                if (!File::exists($dir)) {
                    File::makeDirectory($dir, 0755, true);
                }

                $filename = uniqid() . '.webp';
                $path = public_path('uploads/' . $filename);

                $manager = new ImageManager(new Driver());

                $manager->read($file)
                    ->resize(1200, null, function ($constraint) {
                        $constraint->aspectRatio();
                        $constraint->upsize();
                    })
                    ->toWebp(80)
                    ->save($path);
                $validated['avatar'] = 'uploads/' . $filename;

                if(!empty($student->avatar) && Storage::disk('public')->exists($student->avatar)){
                    Storage::disk('public')->delete($student->avatar);
                }
            }

        $student->update($validated);

        return redirect()->back()->with('success', 'Student updated successfully!');
    }

    // Delete a student
    public function destroy($id)
    {
        $student = StudentProfile::find($id);
        if (! $student) {
            return back()->withErrors(['error' => 'Student ID couldn\'t found']);
        }
        $student->delete();
        return back()->with('success', 'Student successfully deleted');
    }

    /**
     * Student dashboard
     */
    public function dashboard(){
        $profile = auth()->user();
        $student = $profile->student;
        $admits = $profile->admitCard()->where('status','issued')->orderBy('id','desc')->get();

        $invoices = $profile->fee();
        $marksheets = $profile->marksheet()->where('status','published')->orderBy('id','desc')->get();
        $certificates = $profile->certificate();

        $now = Carbon::now();

        $attendances = $student->eduClass
        ->attendance()
        ->where('student_id', $student->student_id)
        ->whereMonth('created_at', $now->month)
        ->whereYear('created_at', $now->year)
        ->get();

        $attendance  = [];
        $totalDays   = $attendances->count();
        $attendance['present'] = $attendances->whereIn('status',['Present','Excused'])->count();
        $attendance['absent']  = $attendances->where('status', 'Absent')->count();
        $attendance['leave']   = $attendances->where('status', 'Excused')->count();
        $attendance['total']   = $totalDays;


        $attendance['percentage'] = $totalDays > 0
        ? round(($attendance['present'] / $totalDays) * 100)
        : 0;

        $routines = $student->eduClass
            ->routine()
            ->where('day', now()->format('l'))
            ->get();

        return view(theme('pages.students.dashboard'), compact('profile','routines','admits','attendance','student','invoices','marksheets','certificates'));
    }

    /**
     * Student admit cards
     */
    public function admitCard(){
        $profile = auth()->user();
        $admits = $profile->admitCard()->where('status','issued')->orderBy('id','desc')->get();
        return view(theme('pages.students.admitcard'),compact('profile','admits'));
    }

    /**
     * Student admit card downloads
     */
    public function admitCardDownload($examCode, $admitCard){
        $admit   = ExamAdmitCard::findOrFail($admitCard);
        $exam    = Exam::where('code', $examCode)->first();
        $profile = auth()->user();

        return view(theme('pages.students.admitcard-download'), compact('admit','exam','profile'));
    }

    /**
     * Student marksheet
     */
    public function marksheet(){
        $profile = auth()->user();
        $marksheets = $profile->marksheet()->where('status','Published')->orderBy('id','desc')->get();
        return view(theme('pages.students.marksheet'), compact('profile','marksheets'));
    }

    /**
     * Student marksheet download
     */
    public function markSheetDownload($id){
        $profile = auth()->user();
        $marksheet = $profile->marksheet()->where('status','Published')->where('id',$id)->first();
        return view(theme('pages.students.marksheet-download'), compact('marksheet'));
    }

    /**
     * Student certificates
     */
    public function certificate(){
        $profile = auth()->user();
        $certificates = $profile->certificate()->where('status','active')->orderBy('id','desc')->get();
        return view(theme('pages.students.certificate'), compact('profile','certificates'));
    }

    /**
     * Student fee and invoices
     */
    public function invoices($id=null){
        $profile = $this->profile;
        $fees = StudentFee::with(['feeHead','feeCollection.collectedBy'])->where('student_id', $profile->id)->latest()->get();
        return view(theme('pages.students.fee'), compact('profile','fees'));
    }
}
