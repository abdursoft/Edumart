<!--committee list-->
<div class="w-full text-slate-800">
    <x-fieldset title="Committee list">
        <!--Card-->
            <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
            <table id="example" class="stripe hover w-full" style="width:100%; padding-top: 1em;  padding-bottom: 1em;">
                <thead>
                    <tr>
                        <th data-priority="1">ID</th>
                        <th data-priority="2">Name</th>
                        <th data-priority="4">Email</th>
                        <th data-priority="3">Serial</th>
                        <th data-priority="4">Permit</th>
                        <th data-priority="5">Designation</th>
                        <th data-priority="6" class="no-export">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($committees as $key=>$committee)
                        <tr>
                            <td>{{$committee->id}}</td>
                            <td>{{$committee->name}}</td>
                            <td>{{$committee->email}}</td>
                            <td>{{$committee->serial}}</td>
                            <td>{{ucfirst($committee->login_permit)}}</td>
                            <td>{{$committee->designation->name ?? 'N/A'}}</td>
                            <td>
                                <div class="flex items-center gap-1">
                                    <a href="{{ route('admin.academic.people.committees.edit',$committee->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                    <a href="{{ route('admin.academic.people.committees.delete',$committee->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this committee')">{!! icons('delete') !!}</a>
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
	{{ loadDataTable('example', 'Committee list')}}
@endpush
