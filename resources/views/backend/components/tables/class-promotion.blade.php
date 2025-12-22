@section('styles')
	 {{ tableStyle()}}
@endSection

<!--Container-->
<div class="w-full text-slate-800">
<h2 class="text-xl md:text-2xl mt-5">Promotion list</h2>
    <!--Card-->
        <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">Student</th>
                    <th data-priority="2">From Class</th>
                    <th data-priority="3">To Class</th>
                    <th data-priority="4">Date</th>
                    <th data-priority="4">Status</th>
                    <th data-priority="5">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($promotions as $key=>$promotion)
                    <tr>
                        <td>{{$promotion->student->name}}</td>
                        <td>{{$promotion->fromClass->name}}</td>
                        <td>{{$promotion->toClass->name ?? ''}}</td>
                        <td>{{ !empty($promotion->promotion_date) ? date('d M, Y', strtotime($promotion->promotion_date)) : ''}}</td>
                        <td>{{ucfirst($promotion->status)}}</td>
                        <td>
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.academic.evaluation.promotion.edit',$promotion->id) }}" class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">Edit</a>
                                <a href="{{ route('admin.academic.evaluation.promotion.delete',$promotion->id) }}" class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition">Delete</a>
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
