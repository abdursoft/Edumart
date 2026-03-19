<div class="w-full flex items-start flex-col gap-3">

    <!-- Filters -->
    <div class="w-full grid grid-cols-1 md:grid-cols-3 gap-3">
        <div class="flex flex-col gap-2">
            <label for="start">Start Date</label>
            <input type="date" id="startDate"
                class="rounded-md border-gray-100 bg-gray-100 text-gray-900 focus:ring-teal-500 focus:border-teal-500 py-2 px-1">
        </div>
        <div class="flex flex-col gap-2">
            <label for="end">End Date</label>
            <input type="date" id="endDate"
                class="rounded-md border-gray-100 bg-gray-100 text-gray-900 focus:ring-teal-500 focus:border-teal-500 py-2 px-1">
        </div>
        <div class="flex flex-col gap-2">
            <label for="search">Search keyword</label>
            <input type="text" id="keyword" placeholder="Name, Reg Number, Father, etc."
                class="rounded-md border-gray-100 bg-gray-100 text-gray-900 focus:ring-teal-500 focus:border-teal-500 py-2 px-1">
        </div>
    </div>

    <!-- Table -->
    <x-yajra-table ajaxRoute="admin.admission.request" :columns="[
        [
            'data' => 'DT_RowIndex',
            'name' => 'DT_RowIndex',
            'title' => 'SL.',
            'orderable' => false,
            'searchable' => false,
        ],
        ['data' => 'name_english', 'name' => 'name_english', 'title' => 'Name'],
        ['data' => 'birth_date', 'name' => 'birth_date', 'title' => 'BOD'],
        ['data' => 'gender', 'name' => 'gender', 'title' => 'Gender'],
        ['data' => 'father_english', 'name' => 'father_english', 'title' => 'Father'],
        ['data' => 'father_mobile', 'name' => 'father_mobile', 'title' => 'F.Mobile', 'class' => 'no-export'],
        ['data' => 'current_address', 'name' => 'current_address', 'title' => 'C.Address'],
        ['data' => 'previous_institute', 'name' => 'previous_institute', 'title' => 'Previous Institute', 'class' => 'no-export'],
        ['data' => 'previous_exam', 'name' => 'previous_exam', 'title' => 'Exam'],
        ['data' => 'previous_result', 'name' => 'previous_result', 'title' => 'Result'],
        ['data' => 'photo', 'name' => 'photo', 'title' => 'Photo', 'orderable' => false, 'searchable' => false, 'class' => 'no-export'],
        ['data' => 'status', 'name' => 'status', 'title' => 'Status'],
        ['data' => 'is_paid', 'name' => 'is_paid', 'title' => 'Paid'],
        ['data' => 'payment_id', 'name' => 'payment_id', 'title' => 'Payment ID', 'class' => 'no-export'],
        ['data' => 'created_at', 'name' => 'created_at', 'title' => 'Date'],
        [
            'data' => 'action',
            'name' => 'action',
            'title' => 'Action',
            'orderable' => 'false',
            'searchable' => 'false',
            'class' => 'no-export',
        ],
    ]" title="Admission request list" />

</div>

@push('scripts')
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            let tableReloadTimeout = null;

            $("#startDate, #endDate, #keyword").on('change keyup', function() {
                clearTimeout(tableReloadTimeout);
                tableReloadTimeout = setTimeout(() => {
                    try {
                        window.dataTables.yajraTable.ajax.reload();
                        loadPopper();
                    } catch (error) {
                        console.log(error);
                    }
                }, 300);
            });
        });
    </script>
@endpush
