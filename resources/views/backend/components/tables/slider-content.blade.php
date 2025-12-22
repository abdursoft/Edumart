@section('styles')
	 {{ tableStyle()}}
@endSection

@include(backend('components.modal.content-preview'))

<div class="w-full text-slate-800">
    <h2 class="text-xl md:text-2xl mt-5">Slider Contents</h2>
    <div id='recipients' class="w-full p-4 mt-2 lg:mt-0 rounded shadow bg-white">
        <table id="sliderTable" class="stripe hover w-full" style="width:100%; padding-top: 1em; padding-bottom: 1em;">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Index number</th>
                    <th>Status</th>
                    <th>Description</th>
                    <th>Created at</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($slider->contents as $content)
                    <tr>
                        <td>{{ $content->title }}</td>
                        <td>{{ ucfirst($content->type) }}</td>
                        <td>{{ ucfirst($content->status) }}</td>
                        <td>{!! $content->description !!}</td>
                        <td>{{ date('d M, Y', strtotime($content->created_at)) }}</td>
                        <td>
                            <div class="flex items-center gap-3">
                                <a href="{{ route('admin.media.slider.content',['slider' => $slider->id, 'id' => $content->id]) }}" class="py-1 px-4 rounded-[15px] shadow-md bg-green-600 text-white hover:bg-green-800 transition">Edit</a>
                                <a href="{{ route('admin.media.slider.delete',$content->id) }}" class="py-1 px-4 bg-red-600 text-white rounded-[15px] shadow-md hover:bg-red-800 transition">Delete</a>
                                <p @if($content->type == 'image') onclick="previewImage('{{Storage::url($content->media_url)}}')" @else onclick="previewVideo('{{Storage::url($content->media_url)}}')" @endif  class="py-1 px-4 bg-slate-600 text-white rounded-[15px] shadow-md hover:bg-slate-800 transition cursor-pointer">View</p>
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
