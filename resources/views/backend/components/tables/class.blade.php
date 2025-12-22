@section('styles')
	 {{ tableStyle()}}
@endSection

<!--Container-->
<div class="w-full text-slate-800">
<h2 class="text-xl md:text-2xl mt-5">Class list</h2>
    <!--Card-->
        <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">Name</th>
                    <th data-priority="2">Section</th>
                    <th data-priority="3">Department</th>
                    <th data-priority="4">Students</th>
                    <th data-priority="4">Order</th>
                    <th data-priority="5">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($classes as $key=>$class)
                    <tr>
                        <td>{{$class->name}}</td>
                        <td>{{$class->section}}</td>
                        <td>{{$class->department->name ?? ''}}</td>
                        <td>{{$class->total}}</td>
                        <td>{{$class->order}}</td>
                        <td>
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.academic.structure.classes.edit',$class->id) }}" class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">Edit</a>
                                <a href="{{ route('admin.academic.structure.classes.delete',$class->id) }}" class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition">Delete</a>
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
