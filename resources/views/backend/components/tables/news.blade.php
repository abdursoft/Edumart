@section('styles')
	{{ tableStyle()}}
@endSection

<!-- Container -->
<div class="w-full text-slate-800">
    <x-fieldset title="News list">
        <!-- Card -->
        <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
            <table id="noticeTable" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
                <thead>
                    <tr>
                        <th data-priority="2">Title</th>
                        <th data-priority="3">Type</th>
                        <th data-priority="4">Status</th>
                        <th data-priority="5">Publish date</th>
                        <th data-priority="11" class="no-export">Action</th>
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
                                <div class="flex items-center gap-1">
                                    <a href="{{ route('admin.information.news.edit',$notice->id) }}" class="py-1 px-2 rounded-[15px] shadow-md hover:bg-green-600 text-green-600 hover:text-white transition">{!! icons('edit') !!}</a>
                                    <a href="{{ route('admin.information.news.delete',$notice->id) }}" class="py-1 px-2 text-red-600 rounded-[15px] shadow-md hover:bg-red-600 hover:text-white transition" onclick="return confirm('Are you sure you want to delete this news?')">{!! icons('delete') !!}</a>
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
    {{ loadDataTable('noticeTable')}}
@endsection
