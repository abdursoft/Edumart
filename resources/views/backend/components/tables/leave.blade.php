@section('styles')
	{{ tableStyle()}}
@endSection

<!-- Container -->
<div class="w-full text-slate-800">
    <x-fieldset title="Leaving list">
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
                                <div class="flex items-center gap-1">
                                    <a href="{{ route('admin.administration.leave_management.edit',$leave->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                    <a href="{{ route('admin.administration.leave_management.delete',$leave->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this leave?')">{!! icons('delete') !!}</a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- /Card -->
    </x-fieldset>
</div>
<!-- /Container -->

@section('scripts')
    <!-- Datatables -->
    {{ tableScript() }}
    {{ loadDataTable('menuTable')}}
@endsection
