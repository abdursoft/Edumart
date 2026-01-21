@section('styles')
	 {{ tableStyle()}}
@endSection

<!--Container-->
<div class="w-full text-slate-800">
<div class="w-full flex items-center justify-between py-3">
    <h2 class="text-xl md:text-2xl mt-5">Page list</h2>
    <x-button
        :items="[
            ['label' => 'Create page', 'type' => 'button',
                'style' => 'bg-red-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-red-800',
                'click' => 'window.location.href=`'.route('admin.page.create_page').'`'],
        ]" position="end"></x-button>
</div>
    <!--Card-->
        <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">Title</th>
                    <th data-priority="2">slug</th>
                    <th data-priority="2">Status</th>
                    <th data-priority="4">Meta title</th>
                    <th data-priority="4">Created At</th>
                    <th data-priority="5" class="no-export">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($pages as $key=>$page)
                    <tr>
                        <td>{{$page->title}}</td>
                        <td>{{$page->slug}}</td>
                        <td>{{ucfirst($page->status)}}</td>
                        <td>{{$page->meta_title}}</td>
                        <td>{{date('d M, Y', strtotime($page->created_at))}}</td>
                        <td>
                             <div class="flex items-center gap-1">
                                <a href="{{ route('admin.page.create_page.edit',$page->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-gray-600 text-slate-600 hover:bg-gray-800 hover:text-white transition">{!! icons('view') !!}</a>
                                <a href="{{ route('admin.page.create_page.edit',$page->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                <a href="{{ route('admin.page.create_page.delete',$page->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this page?')">{!! icons('delete') !!}</a>
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
