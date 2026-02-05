<?php

namespace App\DataTables;

use App\Models\StudentProfile;
use App\Models\EduClass;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Services\DataTable;

class StudentReportDataTable extends DataTable
{
    /**
     * Build DataTable
     */
    public function dataTable($query): EloquentDataTable
    {
        return (new EloquentDataTable($query))
            ->addIndexColumn()

            ->addColumn('class', fn ($row) => $row->eduClass?->name ?? '-')
            ->addColumn('section', fn ($row) => $row->eduSection?->name ?? '-')
            ->addColumn('group', fn ($row) => $row->eduGroup?->name ?? '-')
            ->addColumn('parent', fn ($row) => $row->parent?->name ?? '-')
            ->addColumn('permit', fn ($row) => $row->user?->login_permit ?? '-')

            ->editColumn('created_at', fn ($row) =>
                $row->created_at?->format('d F, Y') ?? '-'
            )

            ->addColumn('attendance', function ($row) {
                if (!$row->user) {
                    return '0.00%';
                }

                $attendance = $row->user->attendance
                    ->where('edu_class_id', $row->edu_class_id);

                $count = $attendance->count();
                $present = $attendance->where('status', 'Present')->count();

                return $count > 0
                    ? number_format(($present / $count) * 100, 2) . '%'
                    : '0.00%';
            })

            /* FILTERS */
            ->filterColumn('class', function ($query, $keyword) {
                $query->whereHas('eduClass', fn ($q) =>
                    $q->where('name', 'like', "%{$keyword}%")
                );
            })

            ->filterColumn('section', function ($query, $keyword) {
                $query->whereHas('eduSection', fn ($q) =>
                    $q->where('name', 'like', "%{$keyword}%")
                );
            })

            ->filterColumn('group', function ($query, $keyword) {
                $query->whereHas('eduGroup', fn ($q) =>
                    $q->where('name', 'like', "%{$keyword}%")
                );
            })

            /* SAFE ORDERING (NO JOIN BUGS) */
            ->orderColumn('class', function ($query, $order) {
                $query->orderBy(
                    EduClass::select('name')
                        ->whereColumn('edu_classes.id', 'student_profiles.edu_class_id'),
                    $order
                );
            });
    }

    /**
     * Query source
     */
    public function query(StudentProfile $model)
    {
        $query = $model->newQuery()
            ->with(['user', 'eduClass', 'parent', 'eduSection', 'eduGroup'])
            ->select('student_profiles.*');

        if ($this->request()->filled('keyword')) {
            $query->where(function ($q) {
                $q->where('name', 'like', "%{$this->request()->keyword}%")
                  ->orWhere('reg_number', 'like', "%{$this->request()->keyword}%");
            });
        }

        if ($this->request()->filled('startDate')) {
            $query->whereDate('created_at', '>=', $this->request()->startDate);
        }

        if ($this->request()->filled('endDate')) {
            $query->whereDate('created_at', '<=', $this->request()->endDate);
        }

        return $query;
    }

    /**
     * HTML Builder
     */
    public function html()
    {
        return $this->builder()
            ->setTableId('yajraTable')
            ->columns($this->getColumns())
            ->addTableClass('table table-striped w-full mt-2')
            ->minifiedAjax()
            ->dom('<"tableTop"Bf>rt<"tableBottom"ip>')
            ->buttons(['copy', 'csv', 'excel', 'pdf', 'print'])
            ->orderBy(0);
    }

    /**
     * Columns
     */
    protected function getColumns(): array
    {
        return [
            ['data' => 'DT_RowIndex', 'name' => 'DT_RowIndex', 'title' => 'SL#', 'orderable' => false, 'searchable' => false],
            ['data' => 'name', 'name' => 'name', 'title' => 'Name'],
            ['data' => 'class', 'name' => 'class', 'title' => 'Class'],
            ['data' => 'section', 'name' => 'section', 'title' => 'Section'],
            ['data' => 'group', 'name' => 'group', 'title' => 'Group'],
            ['data' => 'parent', 'name' => 'parent', 'title' => 'Parent'],
            ['data' => 'permit', 'name' => 'permit', 'title' => 'Permit'],
            ['data' => 'attendance', 'name' => 'attendance', 'title' => 'Attendance', 'orderable' => false],
            ['data' => 'created_at', 'name' => 'created_at', 'title' => 'Created'],
        ];
    }

    protected function filename(): string
    {
        return 'Student_Report_' . date('YmdHis');
    }
}
