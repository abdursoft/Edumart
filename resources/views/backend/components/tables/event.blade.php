<!-- Event list -->
<div class="w-full text-slate-800">
    <x-fieldset title="Event list">
        <!-- Card -->
        <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
            <table id="noticeTable" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
                <thead>
                    <tr>
                        <th data-priority="2">Title</th>
                        <th data-priority="3">Type</th>
                        <th data-priority="4">Status</th>
                        <th data-priority="5">Start date</th>
                        <th data-priority="5">End date</th>
                        <th data-priority="11" class="no-export">Action</th>
                    </tr>
                </thead>

                <tbody>
                    @foreach($events as $key => $event)
                        <tr>
                            <td>{{ $event->title }}</td>
                            <td>{{ $event->type }}</td>
                            <td>{{ $event->is_public == 1 ? 'Public' : 'Private' }}</td>
                            <td>{{ date('d M, Y', strtotime($event->start_date ?? time())) }}</td>
                            <td>{{ date('d M, Y', strtotime($event->end_date ?? time())) }}</td>
                            <td>
                                <div class="flex items-center gap-1">
                                    <a href="{{ route('admin.information.event_calendar.edit',$event->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                    <a href="{{ route('admin.information.event_calendar.delete',$event->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this event?')">{!! icons('delete') !!}</a>
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
    {{ loadDataTable('noticeTable', 'Event list')}}
@enpush
