@section('styles')
	{{ tableStyle()}}
@endSection

<!-- Container -->
<div class="w-full text-slate-800">
    <x-fieldset title="Fee group management">
        <!-- Card -->
        <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
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
                                <div class="flex items-center gap-3">
                                    <a href="{{ route('admin.finance.fees.fee_group.edit', $group->id) }}"
                                    class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">
                                        Edit
                                    </a>
                                    <a href="{{ route('admin.finance.fees.fee_group.delete', $group->id) }}"
                                    class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition"
                                    onclick="return confirm('Are you sure you want to delete this group?');">
                                        Delete
                                    </a>
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

@section('scripts')
    <!-- Datatables -->
    {{ tableScript() }}
    {{ loadDataTable('menuTable')}}
@endsection
