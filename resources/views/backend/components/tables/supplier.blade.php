@section('styles')
    {{ tableStyle() }}
@endsection

<!--Container-->
<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5">Supplier List</h2>

    <!--Card-->
    <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="example" class="stripe hover w-full"
               style="width:100%; padding-top: 1em; padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="1">Name</th>
                    <th data-priority="2">Company</th>
                    <th data-priority="3">Phone</th>
                    <th data-priority="4">Email</th>
                    <th data-priority="4">Added By</th>
                    <th data-priority="5" class="no-export">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($suppliers as $supplier)
                    <tr>
                        <td>{{ $supplier->name }}</td>
                        <td>{{ $supplier->company_name ?? '-' }}</td>
                        <td>{{ $supplier->phone }}</td>
                        <td>{{ $supplier->email ?? '-' }}</td>
                        <td>{{ $supplier->addedBy->name ?? '' }}</td>
                        <td>
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.administration.suppliers.edit', $supplier->id) }}"
                                   class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">
                                    Edit
                                </a>

                                <a href="{{ route('admin.administration.suppliers.delete', $supplier->id) }}"
                                   class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition"
                                   onclick="return confirm('Are you sure you want to delete this supplier?')">
                                    Delete
                                </a>
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
    {{ loadDataTable('example') }}
@endsection
