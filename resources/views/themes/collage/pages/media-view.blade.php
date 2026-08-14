@extends(theme('layouts.app'))
@section('title', 'Media page')

@section('content')
    @include(backend('components.modal.content-preview'))
    <h1 class="text-xl md:text-2xl border-b border-gray-200">Media list</h1>
    <div class="w-full {{count($contents) > 0 ? 'grid' : ''}} grid-cols-1 md:grid-cols-3 lg:grid-cols-4 2xl:grid-cols-5 gap-2 my-2 py-10 px-2 md:px-5">
        @forelse($contents as $media)
            <div class="w-ful h-[180px] rounded-md overflow-hidden shadow-md">
                @if($media->mimes == 'image/webp')
                    <img onclick="previewImage('{{ !empty($media->path) ? Storage::url($media->path) : ''}}')" src="{{ !empty($media->path) ? Storage::url($media->path) : ''}}" alt="{{$media->name ?? ''}}" loading="lazy" class="w-full h-full">
                @else
                    <video onclick="previewVideo('{{ !empty($media->path) ? Storage::url($media->path) : ''}}')" src="{{ !empty($media->path) ? Storage::url($media->path) : ''}}" alt="{{$media->name ?? ''}}" loading="lazy" class="w-full h-full"></video>
                @endif
            </div>
        @empty
            <div class="text-center flex items-center justify-center text-gray-400 w-full min-h-[400px]">
                <h1 class="text-xl md:text-2xl font-bold">No media found, according the searching category!</h1>
            </div>
        @endforelse
    </div>
    <!-- pagination -->
    <div class="w-full mt-2 text-center">
        @if ($contents->hasPages())
            <div class="mt-6 px-2 pb-5">
                {{ $contents->links() }}
            </div>
        @endif
    </div>
@endsection
