<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admission;
use App\Models\Department;
use App\Models\EduClass;
use App\Models\Exam;
use App\Models\Invoice;
use App\Models\Language;
use App\Models\Subject;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class AdminController extends Controller
{
    // Admin dashboard overview
    public function dashboard()
    {
        $users       = User::all();
        $departments = Department::count();
        $students    = $users->where('role', 'student')->count();
        $teachers    = $users->where('role', 'teacher')->count();
        $committee   = $users->where('role', 'committee')->count();
        $staffs      = $users->where('role', 'staff')->count();
        $subjects    = Subject::count();
        $exams       = Exam::count();
        $invoices    = Invoice::count();
        $classes     = EduClass::count();
        $admissions  = Admission::where('status', 'pending')->get()->count();
        return view(backend('pages.dashboard'), compact('students', 'staffs', 'teachers', 'committee', 'subjects', 'exams', 'invoices', 'admissions', 'departments', 'classes'));
    }

    /**
     * Add new language
     */
    public function addLanguage(Request $request)
    {
        $request->validate([
            'code' => 'required|string|unique:languages,code',
            'name' => 'required|string',
        ]);

        $language = Language::create([
            'code'      => $request->code,
            'name'      => $request->name,
            'is_active' => true,
        ]);

        $filePath = resource_path("lang/{$request->code}/messages.php");

        if (! file_exists($filePath)) {
            File::makeDirectory(dirname($filePath), 0755, true);
            File::put($filePath, "<?php\n\nreturn [\n    // Add translated strings here\n];");
        }

        return response()->json(['message' => 'Language added successfully', 'language' => $language], 201);
    }
}
