@section('styles')
	 {{ tableStyle()}}
@endSection

<!--Container-->
<div class="w-full text-slate-800">
<h2 class="text-xl md:text-2xl mt-5">Assignment list</h2>
    <!--Card-->
        <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">Name</th>
                    <th data-priority="2">Class</th>
                    <th data-priority="2">Subject</th>
                    <th data-priority="4">Teacher</th>
                    <th data-priority="4">Start date</th>
                    <th data-priority="5">Due Date</th>
                    <th data-priority="5">Actions</th>
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
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.academic.activities.assignments.edit',$assignment->id) }}" class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">Edit</a>
                                <a href="{{ route('admin.academic.activities.assignments.delete',$assignment->id) }}" class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition">Delete</a>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <!--/Card-->
</div>
<!--/container-->


@section('scripts')
	<!--Datatables -->
	{{ tableScript() }}
	<script>
		$(document).ready(function() {

			var table = $('#example').DataTable( {
					responsive: true
				} )
				.columns.adjust()
				.responsive.recalc();
		} );

	</script>
@endsection
