@extends(backend('layouts.app'))

@section('title', 'Student reports')

@section('content')
    <div class="w-full flex items-start flex-col gap-3">
        <div class="w-full grid grid-cols-1 md:grid-cols-3 gap-3">
            <div class="flex flex-col gap-2">
                <label for="start">Start Date</label>
                <input
                    class="rounded-md border-gray-100 bg-gray-100 text-gray-900 focus:ring-teal-500 focus:border-teal-500 py-2 px-1"
                    type="date" name="" id="startDate">
            </div>
            <div class="flex flex-col gap-2">
                <label for="end">End Date</label>
                <input
                    class="rounded-md border-gray-100 bg-gray-100 text-gray-900 focus:ring-teal-500 focus:border-teal-500 py-2 px-1"
                    type="date" name="" id="endDate">
            </div>
            <div class="flex flex-col gap-2">
                <label for="search">Search keyword</label>
                <input
                    class="rounded-md border-gray-100 bg-gray-100 text-gray-900 focus:ring-teal-500 focus:border-teal-500 py-2 px-1"
                    type="text" name="" id="keyword" placeholder="Name, Class, Section, Group, Reg, Roll">
            </div>
        </div>
        <x-yajra-table ajaxRoute="admin.reports.student_reports" :columns="[
            [
                'data' => 'DT_RowIndex',
                'name' => 'DT_RowIndex',
                'title' => 'SL.',
                'orderable' => false,
                'searchable' => false,
            ],

            ['data' => 'name', 'name' => 'name', 'title' => 'Student', 'priority' => 2],

            ['data' => 'class', 'name' => 'class.name', 'title' => 'Class', 'priority' => 4],

            ['data' => 'section', 'name' => 'section.name', 'title' => 'Section', 'priority' => 4],

            ['data' => 'group', 'name' => 'group.name', 'title' => 'Group', 'priority' => 4],

            ['data' => 'age', 'name' => 'age', 'title' => 'Age', 'priority' => 2],

            ['data' => 'parent', 'name' => 'parent.name', 'title' => 'Parent', 'priority' => 4],

            ['data' => 'reg_number', 'name' => 'reg_number', 'title' => 'Reg. Number', 'priority' => 3],

            ['data' => 'attendance', 'name' => 'attendance', 'title' => 'Attendance', 'priority' => 4, 'class' => 'no-export', 'orderable' => false, 'searchable' => false],
            ['data' => 'created_at', 'name' => 'created_at', 'title' => 'Created at', 'priority' => 5]
        ]" title="Student reports" />

    </div>
@endsection

@push('scripts')
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            let tableReloadTimeout = null;
            $("#startDate, #endDate, #keyword").on('change keyup', function() {
                clearTimeout(tableReloadTimeout);
                tableReloadTimeout = setTimeout(() => {
                    try {
                        window.dataTables.yajraTable.ajax.reload();
                    } catch (error) {
                        console.log(error);
                    }
                }, 300);
            })
        });
    </script>
@endpush
