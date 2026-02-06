<!-- fee group -->
<div class="w-full text-slate-800">
    <x-fieldset title="Fee group management">
        <!-- Card -->
        <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
            <table id="menuTable" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
                <thead>
                    <tr>
                        <th data-priority="1">Name</th>
                        <th data-priority="2">Description</th>
                        <th data-priority="3">Created at</th>
                        <th data-priority="4" class="no-export">Action</th>
                    </tr>
                </thead>

                <tbody>
                    @foreach($groups as $key => $group)
                        <tr>
                            <td>{{ $group->name }}</td>
                            <td>{{ $group->description }}</td>
                            <td>{{ date('d M, Y', strtotime($group->created_at ?? time())) }}</td>
                            <td>
                                <div class="flex items-center gap-1">
                                    <a href="{{ route('admin.finance.fees.fee_group.edit',$group->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                    <a href="{{ route('admin.finance.fees.fee_group.delete',$group->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this fee group')">{!! icons('delete') !!}</a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- /Card -->
    </x-fieldset>
</div>
<!-- /Container -->

@push('scripts')
    {{ loadDataTable('menuTable', 'Fee groups')}}
@endpush
