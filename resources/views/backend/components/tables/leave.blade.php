@section('styles')
	{{ tableStyle()}}
@endSection

<!-- Container -->
<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5 font-semibold">Leaving requests list</h2>

    <!-- Card -->
    <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="menuTable" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="2">Name</th>
                    <th data-priority="3">Start date</th>
                    <th data-priority="4">End date</th>
                    <th data-priority="5">Reason</th>
                    <th data-priority="11" class="no-export">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach($leaves as $key => $leave)
                    <tr>
                        <td>{{ $leave->user->name }}</td>
                        <td>{{ date('d M, Y', strtotime($leave->start_date ?? time())) }}</td>
                        <td>{{ date('d M, Y', strtotime($leave->end_date ?? time())) }}</td>
                        <td>{{$leave->reason}}</td>
                        <td>
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.administration.leave_management.edit', $leave->id) }}"
                                   class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">
                                    Edit
                                </a>
                                <a href="{{ route('admin.administration.leave_management.delete', $leave->id) }}"
                                   class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition"
                                   onclick="return confirm('Are you sure you want to delete this leave?');">
                                    Delete
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
    {{ loadDataTable('menuTable')}}
@endsection
