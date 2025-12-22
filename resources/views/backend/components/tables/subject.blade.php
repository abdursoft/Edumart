@section('styles')
	 {{ tableStyle()}}
@endSection

<!--Container-->
<div class="w-full text-slate-800">
<h2 class="text-xl md:text-2xl mt-5">Subject list</h2>
    <!--Card-->
        <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">Name</th>
                    <th data-priority="2">Code</th>
                    <th data-priority="2">Type</th>
                    <th data-priority="4">Class</th>
                    <th data-priority="4">Teacher</th>
                    <th data-priority="5">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($subjects as $key=>$subject)
                    <tr>
                        <td>{{$subject->name}}</td>
                        <td>{{$subject->code}}</td>
                        <td>{{ucfirst($subject->type)}}</td>
                        <td>{{$subject->eduClass->name ?? ''}}</td>
                        <td>{{$subject->teacher->name ?? ''}}</td>
                        <td>
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.academic.structure.subjects.edit',$subject->id) }}" class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">Edit</a>
                                <a href="{{ route('admin.academic.structure.subjects.delete',$subject->id) }}" class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition">Delete</a>
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
