@section('styles')
	 {{ tableStyle()}}
@endSection

<!--Container-->
<div class="w-full text-slate-800">
<h2 class="text-xl md:text-2xl mt-5">Room list</h2>
    <!--Card-->
        <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">Name</th>
                    <th data-priority="2">Code</th>
                    <th data-priority="2">Type</th>
                    <th data-priority="4">location</th>
                    <th data-priority="4">Capacity</th>
                    <th data-priority="5">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($rooms as $key=>$room)
                    <tr>
                        <td>{{$room->name}}</td>
                        <td>{{$room->code}}</td>
                        <td>{{$room->type}}</td>
                        <td>{{$room->location}}</td>
                        <td>{{$room->capacity}}</td>
                        <td>
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.academic.structure.rooms.edit',$room->id) }}" class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">Edit</a>
                                <a href="{{ route('admin.academic.structure.rooms.delete',$room->id) }}" class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition">Delete</a>
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
