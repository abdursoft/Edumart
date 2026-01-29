@extends(backend('layouts.app'))

@section('title', 'Student reports')

@section('content')
    <div class="w-full flex items-start flex-col lg:flex-row gap-3">
        <x-yajratable ajaxRoute="admin.reports.student_reports" :columns="[
        ['data' => 'DT_RowIndex', 'name' => 'DT_RowIndex', 'title' => 'SL.', 'orderable' => false, 'searchable' => false],

        ['data' => 'name', 'name' => 'name', 'title' => 'Student', 'priority' => 2],

        ['data' => 'class', 'name' => 'class.name', 'title' => 'Class', 'priority' => 4],

        ['data' => 'section', 'name' => 'section.name', 'title' => 'Section', 'priority' => 4],

        ['data' => 'group', 'name' => 'group.name', 'title' => 'Group', 'priority' => 4],

        ['data' => 'age', 'name' => 'age', 'title' => 'Age', 'priority' => 2],

        ['data' => 'parent', 'name' => 'parent.name', 'title' => 'Parent', 'priority' => 4],

        ['data' => 'reg_number', 'name' => 'reg_number', 'title' => 'Reg. Number', 'priority' => 3],

        ['data' => 'permit', 'name' => 'permit', 'title' => 'Permit', 'priority' => 4],
        ['data' => 'created_at', 'name' => 'created_at', 'title' => 'Created at', 'priority' => 5],

        [
            'data' => 'action',
            'name' => 'action',
            'title' => 'Action',
            'orderable' => false,
            'searchable' => false,
            'class' => 'no-export flex items-center gap-1',
            'priority' => 6,
        ],
    ]" />

    </div>
@endsection
