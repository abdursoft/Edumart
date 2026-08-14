<!-- News marquee -->
<div class="mt-4 hidden md:block">
    <div class="text-sm font-semibold text-gray-700">{{ text('news') }}</div>
    <div class="smartmarquee h-[150px] mt-2 space-y-1 relative">
        <div class="containers w-full">
            @foreach(notice() as $news)
                @if($news->type == 'news')
                    <li class="text-sm leading-6">
                        <a href="/news-single/{{ $news->title }}/{{ $news->token }}" class="hover:text-red-600">
                            {{ $news->title }}
                        </a>
                    </li>
                @endif
            @endforeach
        </div>
    </div>
</div>
