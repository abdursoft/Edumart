@section('styles')
    {{ tableStyle() }}
@endsection

<div class="w-full text-slate-800">
    <x-fieldset title="Asset list">
        <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
            <table id="example" class="stripe hover w-full"
                style="width:100%; padding-top:1em; padding-bottom:1em;">
                <thead>
                    <tr>
                        <th data-priority="1">Name</th>
                        <th data-priority="2">Category</th>
                        <th data-priority="3">Supplier</th>
                        <th data-priority="4">Price</th>
                        <th data-priority="4">Due</th>
                        <th data-priority="3">Status</th>
                        <th data-priority="5" class="no-export">Action</th>
                    </tr>
                </thead>

                <tbody>
                    @foreach ($assets as $asset)
                        <tr>
                            <td>{{ $asset->name }}</td>
                            <td>{{ $asset->category ?? '-' }}</td>
                            <td>{{ $asset->supplier->name ?? '' }}</td>
                            <td>{{ number_format($asset->price, 2) }}</td>
                            <td>{{ number_format($asset->due_amount, 2) }}</td>
                            <td>
                                <span class="px-3 py-1 rounded-full text-sm
                                    @if($asset->status == 'accepted') bg-green-100 text-green-700
                                    @elseif($asset->status == 'pending') bg-yellow-100 text-yellow-700
                                    @elseif($asset->status == 'returned') bg-blue-100 text-blue-700
                                    @else bg-red-100 text-red-700 @endif">
                                    {{ ucfirst($asset->status) }}
                                </span>
                            </td>
                            <td>
                                <div class="flex items-center gap-3">
                                    <a href="{{ route('admin.administration.assets.edit', $asset->id) }}"
                                    class="py-1 px-4 bg-green-600 text-white rounded-[15px] hover:bg-green-800">
                                        Edit
                                    </a>
                                    <a href="{{ route('admin.administration.assets.delete', $asset->id) }}"
                                    onclick="return confirm('Delete this asset?')"
                                    class="py-1 px-4 bg-red-600 text-white rounded-[15px] hover:bg-red-800">
                                        Delete
                                    </a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>

            </table>
        </div>
    </x-fieldset>
</div>

@section('scripts')
    {{ tableScript() }}
    {{ loadDataTable('example') }}
@endsection
