@section('styles')
	 {{ tableStyle()}}
@endSection

<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5 font-semibold">Mark sheet subjects</h2>

    <div class="w-full p-4 rounded shadow bg-white overflow-x-auto max-w-screen">
        <table id="example" class="stripe hover w-full">
            <thead>
                <tr>
                    <th>ID</th>
                    <th class="no-export">Exam</th>
                    <th>Subject</th>
                    <th>MCQ</th>
                    <th>Writing</th>
                    <th>Practical</th>
                    <th>Attendance</th>
                    <th>Grade mark</th>
                    <th>Grade point</th>
                    <th>Obtain mark</th>
                    <th>Passed</th>
                    <th class="no-export">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($marksheets as $item)
                    <tr>
                        <td>{{ $item->id }}</td>
                        <td>{{ $item->marksheet->exam->name ?? 'N/A' }}</td>
                        <td>{{ $item->subject->name ?? 'N/A' }}</td>
                        <td>{{ $item->mcq_marks }}</td>
                        <td>{{ $item->writing_marks }}</td>
                        <td>{{ $item->practical_marks }}</td>
                        <td>{{ $item->attendance_marks }}</td>
                        <td>{{ $item->grade }}</td>
                        <td>{{ $item->grade_point }}</td>
                        <td class="font-semibold">{{ $item->obtain_marks }}</td>
                        <td>
                            @if($item->is_passed)
                                <span class="px-3 py-1 bg-green-600 text-white rounded-full text-sm">Yes</span>
                            @else
                                <span class="px-3 py-1 bg-red-600 text-white rounded-full text-sm">No</span>
                            @endif
                        </td>
                        <td>
                            <div class="flex items-center gap-1">
                                <a href="{{ route('admin.academic.evaluation.mark_sheet.item.edit',$item->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                <a href="{{ route('admin.academic.evaluation.mark_sheet.item.delete',$item->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this marksheet item?')">{!! icons('delete') !!}</a>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

@section('scripts')
    {{ tableScript() }}
    {{ loadDataTable('example')}}
@endsection
