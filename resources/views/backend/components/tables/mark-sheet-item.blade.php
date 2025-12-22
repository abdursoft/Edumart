@section('styles')
	 {{ tableStyle()}}
@endSection

<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5 font-semibold">Mark sheet subjects</h2>

    <div class="w-full p-4 rounded shadow bg-white">
        <table id="example" class="stripe hover w-full">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Exam</th>
                    <th>Subject</th>
                    <th>MCQ</th>
                    <th>Writing</th>
                    <th>Practical</th>
                    <th>Attendance</th>
                    <th>Total</th>
                    <th>Passed</th>
                    <th>Action</th>
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
                        <td class="font-semibold">{{ $item->total_marks }}</td>
                        <td>
                            @if($item->is_passed)
                                <span class="px-3 py-1 bg-green-600 text-white rounded-full text-sm">Yes</span>
                            @else
                                <span class="px-3 py-1 bg-red-600 text-white rounded-full text-sm">No</span>
                            @endif
                        </td>
                        <td>
                            <div class="flex gap-2">
                                <a href="{{ route('admin.academic.evaluation.mark_sheet.item.edit', $item->id) }}"
                                   class="py-1 px-3 rounded-[10px] bg-green-600 text-white hover:bg-green-800 transition">Edit</a>
                                <a href="{{ route('admin.academic.evaluation.mark_sheet.item.delete', $item->id) }}"
                                   onclick="return confirm('Delete this record?')"
                                   class="py-1 px-3 rounded-[10px] bg-red-600 text-white hover:bg-red-800 transition">Delete</a>
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
    <script>
        $(document).ready(function() {
            $('#example').DataTable({
                responsive: true,
                pageLength: 10,
                order: [[0, 'desc']],
            });
        });
    </script>
@endsection
