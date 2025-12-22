@section('styles')
	{{ tableStyle()}}
@endSection

<!-- Container -->
<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5 font-semibold">Event List</h2>

    <!-- Card -->
    <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="noticeTable" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
            <thead>
                <tr>
                    <th data-priority="2">Title</th>
                    <th data-priority="3">Type</th>
                    <th data-priority="4">Status</th>
                    <th data-priority="5">Event date</th>
                    <th data-priority="11">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach($notices as $key => $notice)
                    <tr>
                        <td>{{ $notice->title }}</td>
                        <td>{{ $notice->type }}</td>
                        <td>{{ $notice->status }}</td>
                        <td>{{ date('d M, Y', strtotime($notice->publish_date ?? time())) }}</td>
                        <td>
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.information.event_calendar.edit', $notice->id) }}"
                                   class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">
                                    Edit
                                </a>
                                <a href="{{ route('admin.information.event_calendar.delete', $notice->id) }}"
                                   class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition"
                                   onclick="return confirm('Are you sure you want to delete this notice?');">
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
</div>
<!-- /Container -->

@section('scripts')
    <!-- Datatables -->
    {{ tableScript() }}
    <script>
        $(document).ready(function() {
            $('#noticeTable').DataTable({
                responsive: true,
                pageLength: 10,
                order: [[0, 'desc']], // Sort by newest first
                language: {
                    search: "_INPUT_",
                    searchPlaceholder: "Search notices...",
                }
            });
        });
    </script>
@endsection
