<!--gallery list-->
<div class="w-full text-slate-800">
    <x-fieldset title="Gallery list">
        <!--Card-->
        <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
            <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
                <thead>
                    <tr>
                        <th data-priority="1">Name</th>
                        <th data-priority="2">Type</th>
                        <th data-priority="2">Status</th>
                        <th data-priority="2">Contents</th>
                        <th data-priority="2">Description</th>
                        <th data-priority="5" class="no-export">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($galleries as $key=>$gallery)
                        <tr>
                            <td>{{$gallery->name}}</td>
                            <td>{{$gallery->type}}</td>
                            <td>{{$gallery->status}}</td>
                            <td>{{$gallery->contents->count()}}</td>
                            <td>{{strip_tags(substr($gallery->description,0,100))}}</td>
                            <td>
                                <div class="flex items-center gap-1">
                                    <a href="{{ route('admin.media.gallery.edit',$gallery->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                    <a href="{{ route('admin.media.gallery.delete',$gallery->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this group')">{!! icons('delete') !!}</a>
                                    <a href="{{ route('admin.media.gallery.content',$gallery->id) }}" class="py-1 px-4 bg-slate-600 text-white rounded-[15px] shadow-md hover:bg-slate-800 transition">Contents</a>
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
	{{ loadDataTable('example', 'Gallery list')}}
@endpush
