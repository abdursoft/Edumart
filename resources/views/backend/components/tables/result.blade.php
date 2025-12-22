{{-- Table for Exam Results --}}
{{tableStyle()}}

<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5 font-semibold">Exam Results</h2>

    <div class="w-full p-4 mt-2 rounded shadow bg-white">
        <table id="example" class="stripe hover w-full">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Exam Name</th>
                    <th>Passed</th>
                    <th>Failed</th>
                    <th>Grade %</th>
                    <th>Status</th>
                    <th>Remarks</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach($results as $result)
                <tr>
                    <td>{{ $result->id }}</td>
                    <td>{{ $result->exam->name ?? 'N/A' }}</td>
                    <td>{{ $result->passed ?? '—' }}</td>
                    <td>{{ $result->failed ?? '—' }}</td>
                    <td>{{ $result->percentage ?? '—' }}</td>
                    <td>
                        <span class="px-3 py-1 rounded-full text-white text-sm
                            @if($result->status === 'published') bg-green-600
                            @else bg-gray-600
                            @endif
                        ">
                            {{ ucfirst($result->status) }}
                        </span>
                    </td>
                    <td>{{ $result->remarks ? Str::limit($result->remarks, 30) : '—' }}</td>
                    <td>
                        <div class="flex gap-3">
                            <a href="{{ route('admin.academic.evaluation.results.edit', $result->id) }}"
                                class="py-1 px-4 rounded-[15px] bg-green-600 text-white shadow hover:bg-green-800">
                                Edit
                            </a>

                            <a href="{{ route('admin.academic.evaluation.results.delete', $result->id) }}"
                                class="py-1 px-4 rounded-[15px] bg-red-600 text-white shadow hover:bg-red-800"
                                onclick="return confirm('Delete this result?');">
                                Delete
                            </a>
                        </div>
                    </td>
                </tr>
                @endforeach
            </tbody>

        </table>
    </div>
</div>

@section('scripts')
    {{-- Regular Datatables JS --}}
    {{tableScript()}}
    <script>
        $(document).ready(function() {
            $('#example').DataTable({
                responsive: true,
                pageLength: 10,
                order: [[0, 'desc']]
            });
        });
    </script>
@endsection
