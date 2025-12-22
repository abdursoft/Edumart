<!-- News marquee -->
<div class="mt-4 hidden md:block">
    <div class="text-sm font-semibold text-gray-700">{{ ('news_notice') }}</div>
    <div class="smartmarquee h-[320px] mt-2 space-y-1">
        @if(!empty($newsNotices))
            <div class="containers w-full">
                @foreach($newsNotices as $news)
                    <li class="text-sm leading-6 {{ $news->type == 'news' ? '' : 'hidden' }}">
                        <a href="/news-single/{{ $news->title }}/{{ $news->token }}" class="hover:text-teal-600">
                            {{ $news->title }}
                        </a>
                    </li>
                @endforeach
            </div>
        @endif
    </div>
</div>
