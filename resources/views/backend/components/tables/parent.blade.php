@section('styles')
	 {{ tableStyle()}}
@endSection

<!--Container-->
<div class="w-full text-slate-800">
<h2 class="text-xl md:text-2xl mt-5">Guardian list</h2>
    <!--Card-->
        <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">ID</th>
                    <th data-priority="2">Name</th>
                    <th data-priority="4">Email</th>
                    <th data-priority="3">Phone</th>
                    <th data-priority="4">Address</th>
                    <th data-priority="5">Login</th>
                    <th data-priority="6">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($parents as $key=>$parent)
                    <tr>
                        <td>{{$parent->id}}</td>
                        <td>{{$parent->name}}</td>
                        <td>{{$parent->email}}</td>
                        <td>{{$parent->phone}}</td>
                        <td>{{$parent->address}}</td>
                        <td>{{ucfirst($parent->login_permit)}}</td>
                        <td>
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.academic.people.guardians.edit',$parent->id) }}" class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">Edit</a>
                                <a href="{{ route('admin.academic.people.guardians.delete',$parent->id) }}" class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition">Delete</a>
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
