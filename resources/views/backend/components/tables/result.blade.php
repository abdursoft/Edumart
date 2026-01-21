{{-- Table for Exam Results --}}
{{tableStyle()}}

<div class="w-full text-slate-800">
    <x-fieldset title="Result list">
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
                        <th class="no-export">Action</th>
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
                            <div class="flex items-center gap-1">
                                <a href="{{ route('admin.academic.evaluation.results.edit',$result->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                <a href="{{ route('admin.academic.evaluation.results.delete',$result->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this result?')">{!! icons('delete') !!}</a>
                            </div>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </x-fieldset>
</div>

@section('scripts')
    {{-- Regular Datatables JS --}}
    {{tableScript()}}
    {{ loadDataTable('example')}}
@endsection
