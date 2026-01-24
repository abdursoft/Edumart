@section('styles')
	 {{ tableStyle()}}
@endSection

<!--Container-->
<div class="w-full text-slate-800">
<h2 class="text-xl md:text-2xl mt-5">Promotion list</h2>
    <!--Card-->
        <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">Student</th>
                    <th data-priority="2">From Class</th>
                    <th data-priority="3">To Class</th>
                    <th data-priority="4">Date</th>
                    <th data-priority="4">Status</th>
                    <th data-priority="5" class="no-export">Action</th>
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
                            <div class="flex items-center gap-1">
                                <a href="{{ route('admin.academic.evaluation.promotion.edit',$promotion->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                <a href="{{ route('admin.academic.evaluation.promotion.delete',$promotion->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this promotion')">{!! icons('delete') !!}</a>
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
	{{ loadDataTable('example')}}
@endsection
