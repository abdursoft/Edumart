@section('styles')
	 {{ tableStyle()}}
@endSection

<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5">Slider List</h2>
    <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="sliderTable" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Status</th>
                    <th>ShortCode</th>
                    <th>Contents</th>
                    <th>Created at</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($sliders as $slider)
                    <tr>
                        <td>{{ $slider->name }}</td>
                        <td>{{ ucfirst($slider->type) }}</td>
                        <td>{{ ucfirst($slider->status) }}</td>
                        <td>{{ $slider->shortcode }}</td>
                        <td>{{ count($slider->contents) }}</td>
                        <td>{{ date('d M, Y', strtotime($slider->created_at)) }}</td>
                        <td>
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.media.slider.edit',$slider->id) }}" class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">Edit</a>
                                <a href="{{ route('admin.media.slider.delete',$slider->id) }}" class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition">Delete</a>
                                <a href="{{ route('admin.media.slider.content',$slider->id) }}" class="py-1 px-4 bg-slate-600 text-white rounded-[15px] shadow-md hover:bg-slate-800 transition">Contents</a>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

@section('scripts')
    {{ tableScript() }}
    <script>
        $(document).ready(function() {
            var table = $('#sliderTable').DataTable({
                responsive: true
            })
            .columns.adjust()
            .responsive.recalc();
        });
    </script>
@endsection
