@extends(theme('layouts.app'))
@section('title', 'Media page')

@section('content')
    <h1 class="text-xl md:text-2xl border-b border-gray-200">Media list</h1>
    <div class="w-full {{count($galleries) > 0 ? 'grid' : ''}} grid-cols-1 md:grid-cols-3 lg:grid-cols-4 2xl:grid-cols-5 gap-2 my-2 py-10 px-2 md:px-5">
        @forelse($galleries as $media)
            <div class="w-ful h-[280px] rounded-md overflow-hidden shadow-md group relative">
                <img src="@if($media->type == 'Video') {{asset('static/images/video.png')}} @else {{asset('static/images/gallery.png')}} @endif" alt="{{$media->name ?? ''}}" loading="lazy" class="w-full h-[240px]">
                <h2 class="text-xl">{{$media->name}} <small class="text-sm">({{ucfirst($media->type)}})</small></h2>
                <div class="text-center mt-3 flex md:hidden group-hover:flex transition-all items-center justify-center absolute w-full h-full z-2 inset-0">
                    <a href="{{route('media', ['type' => 'gallery', 'id' => $media->id])}}" class="px-3 py-1 rounded-md bg-gray-500 text-white hover:bg-gray-700">View Gallery</a>
                </div>
            </div>
        @empty
            <div class="text-center flex items-center justify-center text-gray-400 w-full min-h-[400px]">
                <h1 class="text-xl md:text-2xl font-bold">No media found, according the searching category!</h1>
            </div>
        @endforelse
    </div>
    <!-- pagination -->
    <div class="w-full mt-2 text-center">
        @if ($galleries->hasPages())
            <div class="mt-6 px-2 pb-5">
                {{ $galleries->links() }}
            </div>
        @endif
    </div>
@endsection
