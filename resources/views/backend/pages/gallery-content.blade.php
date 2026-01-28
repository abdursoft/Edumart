@extends(backend('layouts.app'))
@section('title', $gallery->name.' Gallery Contents')

@section('content')
    @include(backend('components.partial.file-upload'))

    <!-- gallery contents -->
    <div class="w-full grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-2">
        @foreach($contents as $content)
            @if($content->mimes == 'image/webp')
                <div class="w-full relative rounded-md hover:rounded-md hover:shadow-xl cursor-pointer overflow-hidden ga-content-{{$content->id}}" >
                    <iconify-icon icon="fa7-regular:times-circle" width="24" height="24" class="absolute top-1 right-1 text-red-300 hover:text-red-600" onclick="removeGalleryContent({{$content->id}})"></iconify-icon>
                    <img src="{{Storage::url($content->path)}}" alt="{{$gallery->name}}" class="object-fit aspect-16/9">
                </div>
            @else
                <div class="w-full relative rounded-md shadow bg-slate-500 hover:rounded-md hover:shadow-xl cursor-pointer overflow-hidden ga-content-{{$content->id}}" >
                    <iconify-icon icon="fa7-regular:times-circle" width="24" height="24" class="absolute top-1 right-1 text-red-300 hover:text-red-600 p-2 rounded-md" onclick="removeGalleryContent({{$content->id}})"></iconify-icon>
                    <video src="{{Storage::url($content->path)}}" title="{{$gallery->name}}" controls class="w-full h-full object-fit"> </video>
                </div>
            @endif
        @endforeach
    </div>
@endsection

@push('scripts')
    <script>
        function removeGalleryContent(content){
            $.ajax({
                url: `{{route('admin.media.gallery.content.delete')}}`,
                method: 'delete',
                data:{'id': content},
                success: (response) => {
                    $(`.ga-content-${content}`).remove();
                }
            })
        }
    </script>
@endpush
