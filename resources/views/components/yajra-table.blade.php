@section('styles')
    {{ tableStyle() }}
@endSection

<!-- Container -->
<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5 font-semibold">{{$title}}</h2>

    <!-- Card -->
    <div id="recipients" class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white overflow-x-auto max-w-screen">
        <table id="{{ $tableID }}" class="stripe hover w-full"
            style="width:100%; padding-top: 1em; padding-bottom: 1em;">
            <thead>
                <tr>
                    @foreach ($columns as $column)
                        <th @if (isset($column['priority'])) data-priority="{{ $column['priority'] }}" @endif
                            class="{{ $column['class'] ?? '' }}">
                            {{ $column['title'] }}
                        </th>
                    @endforeach
                </tr>
        </table>
    </div>
    <!-- /Card -->
</div>
<!-- /Container -->

@push('scripts')
    <!-- Datatables -->
    <script>
        let commonExportOptions = {
            columns: ':visible:not(.no-export)'
        };

        const data = @json($columns);

        document.addEventListener('DOMContentLoaded', () => {
            const columns = @json($columns);
            window.dataTables = window.dataTables || {};
            window.dataTables['{{ $tableID }}'] = $('#{{ $tableID }}').DataTable({
                responsive: true,
                serverSide: true,
                processing: true,
                dom:'<"flex justify-end"B>rt<"tableBottom"ip>',
                ajax: {
                    url: "{{ route($ajaxRoute) }}",
                    method: 'get',
                    data: (payload) => {
                        @foreach($searchKey as $key)
                            if('{{$key}}' == 'keyword'){
                                payload['search']['value'] = $(`#{{$key}}`).val();
                            }else{
                                payload[`{{$key}}`] = $(`#{{$key}}`).val();
                            }
                        @endforeach
                    }
                },
                columns: data
            });
        });
    </script>
@endpush
