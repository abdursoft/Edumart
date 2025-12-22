@section('styles')
	 {{ tableStyle()}}
@endSection

<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5">Class Routine List</h2>
    <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="routineTable" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
            <thead>
                <tr>
                    <th>Class</th>
                    <th>Day</th>
                    <th>Subject</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                    <th>Room</th>
                    <th>Teacher</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($routines as $routine)
                    <tr>
                        <td>{{ $routine->eduClass->name }} {{ $routine->eduClass->section }}</td>
                        <td>{{ $routine->day }}</td>
                        <td>{{ $routine->subject->name }}</td>
                        <td>{{ date('H:i A', strtotime($routine->start_time)) }}</td>
                        <td>{{ date('H:i A', strtotime($routine->end_time)) }}</td>
                        <td>{{ $routine->classRoom->name ?? '-' }}</td>
                        <td>{{ $routine->subject->teacher->name ?? '-' }}</td>
                        <td>
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.academic.structure.routines.edit',$routine->id) }}" class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">Edit</a>
                                <a href="{{ route('admin.academic.structure.routines.delete',$routine->id) }}" class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition">Delete</a>
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
            var table = $('#routineTable').DataTable({
                responsive: true
            })
            .columns.adjust()
            .responsive.recalc();
        });
    </script>
@endsection
