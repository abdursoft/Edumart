<!-- Exam fee -->
<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5 font-semibold">Exam Fees List</h2>

    <!-- Card -->
    <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">ID</th>
                    <th data-priority="2">Exam</th>
                    <th data-priority="3">Class</th>
                    <th data-priority="4">Amount</th>
                    <th data-priority="5">Late Fee</th>
                    <th data-priority="6">Due Date</th>
                    <th data-priority="7">Status</th>
                    <th data-priority="8" class="no-export">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach($examFees as $fee)
                    <tr>
                        <td>{{ $fee->id }}</td>
                        <td>{{ $fee->exam->name ?? 'N/A' }}</td>
                        <td>{{ $fee->exam->eduClass->name ?? 'N/A' }}</td>
                        <td>{{ number_format($fee->amount, 2) }}</td>
                        <td>{{ number_format($fee->late_fee, 2) }}</td>
                        <td>{{ $fee->due_date ? date('d M, Y', strtotime($fee->due_date)) : '—' }}</td>
                        <td>
                            <span class="px-3 py-1 rounded-full text-sm
                                {{ $fee->status === 'Active' ? 'bg-green-200 text-green-600' : 'bg-gray-200 text-slate-600' }}">
                                {{ $fee->status }}
                            </span>
                        </td>
                        <td>
                            <div class="flex items-center gap-1">
                                <a href="{{ route('admin.academic.evaluation.exam_fee.edit',$fee->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                <a href="{{ route('admin.academic.evaluation.exam_fee.delete',$fee->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this exam-fee')">{!! icons('delete') !!}</a>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <!-- /Card -->
</div>
<!-- /Container -->

@push('scripts')
    {{ loadDataTable('example', 'Exam fees')}}
@endpush
