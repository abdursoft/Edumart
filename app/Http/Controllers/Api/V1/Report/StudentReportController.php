<?php

namespace App\Http\Controllers\Api\V1\Report;

use App\Http\Controllers\Controller;
use App\Models\StudentProfile;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class StudentReportController extends Controller
{
    /**
     * Get student report
     */
    public function studentReport(Request $request)
    {
        if ($request->ajax()) {
            $students = StudentProfile::with('user','eduClass','parent','eduSection','eduGroup')->select('student_profiles.*');

            return DataTables::of($students)
                ->addIndexColumn()
                ->addColumn('class', fn($row) => $row->eduClass?->name ?? '-')
                ->addColumn('section', fn($row) => $row->eduSection?->name ?? '-')
                ->addColumn('group', fn($row) => $row->eduGroup?->name ?? '-')
                ->addColumn('parent', fn($row) => $row->parent?->name ?? '-')
                ->addColumn('permit', fn($row) => $row->user?->login_permit ?? '-')
                ->addColumn('created_at', fn($row) => date('d F, Y', strtotime($row->created_at)) ?? '-')

                ->addColumn('action', function($row){
                    $edit = route('admin.academic.activities.assignments.edit',$row->id);
                    $delete = route('admin.academic.activities.assignments.delete',$row->id);
                    return '<a href="'.$edit.'" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">'. icons('edit').'</a>
                                <a href="'.$delete.'" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm(`Are you sure you want to delete this assignment`)">'. icons('delete') .'</a>';
                })

                ->filterColumn('class', function ($query, $keyword) {
                    $query->whereHas('eduClass', function ($q) use ($keyword) {
                        $q->where('name', 'like', "%{$keyword}%");
                    });
                })

                ->orderColumn('class', function ($query, $order) {
                    $query->join('edu_classes', 'edu_classes.id', '=', 'student_profiles.edu_class_id')
                        ->orderBy('edu_classes.name', $order);
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view(backend('pages.reports.student'));
    }
}
