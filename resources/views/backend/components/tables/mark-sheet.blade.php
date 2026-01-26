@section('styles')
	 {{ tableStyle()}}
@endSection

<!-- Container -->
<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5 font-semibold">Exam Marksheet List</h2>

    <!-- Card -->
    <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">ID</th>
                    <th data-priority="2">Exam</th>
                    <th data-priority="3">Student</th>
                    <th data-priority="4">Marks Obtained</th>
                    <th data-priority="5">Full Marks</th>
                    <th data-priority="6">Percentage</th>
                    <th data-priority="7">Grade</th>
                    <th data-priority="8">Passed</th>
                    <th data-priority="9">Remarks</th>
                    <th data-priority="10">Status</th>
                    <th data-priority="11" class="no-export">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach($marksheets as $key => $marksheet)
                    <tr>
                        <td>{{ $marksheet->id }}</td>
                        <td>{{ $marksheet->exam->name ?? 'N/A' }}</td>
                        <td>{{ $marksheet->student->name ?? 'N/A' }}</td>
                        <td class="text-center font-semibold">{{ $marksheet->total_marks_obtained }}</td>
                        <td class="text-center">{{ $marksheet->total_full_marks }}</td>
                        <td class="text-center">
                            {{ number_format($marksheet->percentage, 2) }}%
                        </td>
                        <td class="text-center font-bold text-gray-700">{{ ucfirst($marksheet->grade) ?? '—' }}</td>
                        <td class="text-center">
                            @if($marksheet->is_passed)
                                <span class="px-3 py-1 rounded-full text-green-600 text-sm bg-green-100">
                                    Passed
                                </span>
                            @else
                                <span class="px-3 py-1 rounded-full text-red-600 text-sm bg-red-100">
                                    Failed
                                </span>
                            @endif
                        </td>
                        <td class="text-center">{{ $marksheet->remarks ?? '—' }}</td>
                        <td class="text-center">
                            <span class="
                                px-3 py-1 rounded-full text-sm
                                @if($marksheet->status === 'Published') bg-blue-100 text-blue-600
                                @else bg-gray-200 text-gray-600
                                @endif
                            ">
                                {{ $marksheet->status }}
                            </span>
                        </td>
                        <td>
                            <div class="flex items-center gap-1">
                                <a href="{{ route('admin.academic.evaluation.mark_sheet.edit',$marksheet->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                <a href="{{ route('admin.academic.evaluation.mark_sheet.delete',$marksheet->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this markshee? All items will be deleted')">{!! icons('delete') !!}</a>
                                <a href="{{ route('admin.academic.evaluation.mark_sheet.print',$marksheet->id) }}" target="_blank" class="py-1 px-2 rounded-[15px] md:shadow-md hover:bg-yellow-600 text-orange-600 hover:text-white transition">{!! icons('print') !!}</a>
                                <a href="{{ route('admin.academic.evaluation.mark_sheet.item.add', $marksheet->id) }}"
                                   class="py-1 px-4 bg-teal-600 text-white rounded-[15px] shadow-md hover:bg-teal-800 transition">
                                    Subjects
                                </a>
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

@section('scripts')
    <!-- Datatables -->
    {{ tableScript() }}
    {{ loadDataTable('example')}}
@endsection
