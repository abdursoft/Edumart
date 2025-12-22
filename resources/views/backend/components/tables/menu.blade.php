@section('styles')
	{{ tableStyle()}}
@endSection

<!-- Container -->
<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5 font-semibold">Menu List</h2>

    <!-- Card -->
    <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="menuTable" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="2">Name</th>
                    <th data-priority="3">Location</th>
                    <th data-priority="4">Status</th>
                    <th data-priority="5">Created at</th>
                    <th data-priority="11">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach($menus as $key => $menu)
                    <tr>
                        <td>{{ $menu->name }}</td>
                        <td>{{ ucfirst($menu->location) }}</td>
                        <td>{{ ucfirst($menu->status) }}</td>
                        <td>{{ date('d M, Y', strtotime($menu->created_at ?? time())) }}</td>
                        <td>
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.menu.create', $menu->id) }}"
                                   class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">
                                    Edit
                                </a>
                                <a href="{{ route('admin.menu.delete', $menu->id) }}"
                                   class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition"
                                   onclick="return confirm('Are you sure you want to delete this menu?');">
                                    Delete
                                </a>
                                 <a href="{{ route('admin.menu.items', $menu->id) }}"
                                   class="py-1 px-4 bg-slate-600 text-white rounded-[15px] shadow-md hover:bg-slate-800 transition"
                                   >
                                    Navigation
                                </a>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <!-- /Card -->
</div>
<!-- /Container -->

@section('scripts')
    <!-- Datatables -->
    {{ tableScript() }}
    <script>
        $(document).ready(function() {
            $('#menuTable').DataTable({
                responsive: true,
                pageLength: 10,
                order: [[0, 'desc']], // Sort by newest first
                language: {
                    search: "_INPUT_",
                    searchPlaceholder: "Search menus...",
                }
            });
        });
    </script>
@endsection
