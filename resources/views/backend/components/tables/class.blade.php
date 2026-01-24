@section('styles')
	 {{ tableStyle()}}
@endSection

<!--Container-->
<div class="w-full text-slate-800">
<h2 class="text-xl md:text-2xl mt-5">Class list</h2>
    <!--Card-->
        <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">Name</th>
                    <th data-priority="2">Section</th>
                    <th data-priority="3">Department</th>
                    <th data-priority="4">Students</th>
                    <th data-priority="4">Order</th>
                    <th data-priority="5" class="no-export">Action</th>
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
                            <div class="flex items-center gap-1">
                                <a href="{{ route('admin.academic.structure.classes.edit',$class->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                <a href="{{ route('admin.academic.structure.classes.delete',$class->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this class')">{!! icons('delete') !!}</a>
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
