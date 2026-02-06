<!--Assignment-->
<div class="w-full text-slate-800">
<x-fieldset title="Assignment list">
    <!--Card-->
        <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">Name</th>
                    <th data-priority="2">Class</th>
                    <th data-priority="2">Subject</th>
                    <th data-priority="4">Teacher</th>
                    <th data-priority="4">Start date</th>
                    <th data-priority="5">Due Date</th>
                    <th data-priority="5" class="no-export">Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach($assignments as $key=>$assignment)
                    <tr>
                        <td>{{$assignment->title}}</td>
                        <td>{{$assignment->eduClass->name}}</td>
                        <td>{{$assignment->subject->name}}</td>
                        <td>{{$assignment->teacher->name}}</td>
                        <td>{{ date('F d, Y', strtotime($assignment->assigned_date)) }}</td>
                        <td>{{ date('F d, Y', strtotime($assignment->due_date)) }}</td>
                        <td>
                            <div class="flex items-center gap-1">
                                <a href="{{ route('admin.academic.activities.assignments.edit',$assignment->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                <a href="{{ route('admin.academic.activities.assignments.delete',$assignment->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this assignment')">{!! icons('delete') !!}</a>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <!--/Card-->
</x-fieldset>
</div>
<!--/container-->


@push('scripts')
	{{ loadDataTable('example', 'Assignment list')}}
@endpush
