<!--room list-->
<div class="w-full text-slate-800">
    <x-fieldset title="Room list">
        <!--Card-->
            <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
            <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
                <thead>
                    <tr>
                        <th data-priority="1">Name</th>
                        <th data-priority="2">Code</th>
                        <th data-priority="2">Type</th>
                        <th data-priority="4">location</th>
                        <th data-priority="4">Capacity</th>
                        <th data-priority="5" class="no-export">Action</th>
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
                                <div class="flex items-center gap-1">
                                    <a href="{{ route('admin.academic.structure.rooms.edit',$room->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                    <a href="{{ route('admin.academic.structure.rooms.delete',$room->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this room')">{!! icons('delete') !!}</a>
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
	{{ loadDataTable('example', 'Room list')}}
@endpush
