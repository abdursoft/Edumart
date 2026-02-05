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

            if ($request->filled('keyword')) {
                $students->where(function ($q) use ($request) {
                    $q->where('name', 'like', "%{$request->keyword}%")
                    ->orWhere('reg_number', 'like', "%{$request->keyword}%");
                });
            }

             if ($request->filled('startDate')) {
                $students->whereDate('created_at', '>=', $request->startDate);
            }

            if ($request->filled('endDate')) {
                $students->whereDate('created_at', '<=', $request->endDate);
            }

            return DataTables::of($students)
                ->addIndexColumn()
                ->addColumn('class', fn($row) => $row->eduClass?->name ?? '-')
                ->addColumn('section', fn($row) => $row->eduSection?->name ?? '-')
                ->addColumn('group', fn($row) => $row->eduGroup?->name ?? '-')
                ->addColumn('parent', fn($row) => $row->parent?->name ?? '-')
                ->addColumn('permit', fn($row) => $row->user?->login_permit ?? '-')
                ->addColumn('created_at', fn($row) => date('d F, Y', strtotime($row->created_at)) ?? '-')
                ->addColumn('attendance', function($row){
                    $count = $row->user->attendance->where('edu_class_id', $row->edu_class_id)->count();
                    $present = $row->user->attendance->where('edu_class_id', $row->edu_class_id)->where('status', 'Present')->count();

                    if($count > 0 && $present > 0){
                        return number_format(($present / $count) * 100, 2). '%';
                    }
                    return '0.00%';
                })

                ->filterColumn('class.name', function ($query, $keyword) {
                    $query->whereHas('eduClass', function ($q) use ($keyword) {
                        $q->where('name', 'like', "%{$keyword}%");
                    });
                })

                ->filterColumn('section.name', function($query, $keyword){
                    $query->whereHas('eduSection', function($q) use ($keyword){
                        $q->where('name', 'like', "%{$keyword}%");
                    });
                })

                ->filterColumn('group.name', function($query, $keyword){
                    $query->whereHas('eduGroup', function($q) use ($keyword){
                        $q->where('name', 'like', "%{$keyword}%");
                    });
                })

                ->orderColumn('class', function ($query, $order) {
                    $query->join('edu_classes', 'edu_classes.id', '=', 'student_profiles.edu_class_id')
                        ->orderBy('edu_classes.name', $order);
                })
                ->make(true);
        }
        return view(backend('pages.reports.student'));
    }
}
