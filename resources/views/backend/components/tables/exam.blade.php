<!-- Exam list -->
<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5 font-semibold">Exam List</h2>

    <!-- Card -->
    <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">ID</th>
                    <th data-priority="2">Name</th>
                    <th data-priority="3">Code</th>
                    <th data-priority="4">Year</th>
                    <th data-priority="5">Session</th>
                    <th data-priority="6">Class</th>
                    <th data-priority="7">Type</th>
                    <th data-priority="8">Status</th>
                    <th data-priority="9">Start Date</th>
                    <th data-priority="10">End Date</th>
                    <th data-priority="11" class="no-export">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach($exams as $key => $exam)
                    <tr>
                        <td>{{ $exam->id }}</td>
                        <td>{{ $exam->name }}</td>
                        <td>{{ $exam->code }}</td>
                        <td>{{ $exam->year }}</td>
                        <td>{{ $exam->session }}</td>
                        <td>{{ $exam->eduClass->name ?? 'N/A' }}</td>
                        <td>{{ $exam->type }}</td>
                        <td>
                            <span class="
                                px-3 py-1 rounded-full text-white text-sm
                                @if($exam->status === 'Scheduled') bg-blue-500
                                @elseif($exam->status === 'Completed') bg-green-600
                                @elseif($exam->status === 'Canceled') bg-red-600
                                @endif
                            ">
                                {{ $exam->status }}
                            </span>
                        </td>
                        <td>{{ $exam->start_date ? date('d M, Y', strtotime($exam->start_date)) : '—' }}</td>
                        <td>{{ $exam->end_date ? date('d M, Y', strtotime($exam->end_date)) : '—' }}</td>
                        <td>
                            <div class="flex items-center gap-1">
                                <a href="{{ route('admin.academic.evaluation.exams.edit',$exam->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                <a href="{{ route('admin.academic.evaluation.exams.delete',$exam->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this exam')">{!! icons('delete') !!}</a>
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
    {{ loadDataTable('example', 'Exam list')}}
@endpush
