<!-- Notice -->
<div class="mt-4 hidden md:block">
    <div class="text-sm font-semibold text-gray-700">{{ ('notice') }}</div>
    <div class="smartmarquee h-[320px] mt-2 space-y-1">
        @if($newsNotices)
            <div class="containers w-full">
                @foreach($newsNotices as $notice)
                    <li class="text-sm leading-6 {{ $notice->type == 'notice' ? '' : 'hidden' }}">
                        <a href="/notice-single/{{ $notice->title }}/{{ $notice->id }}" class="hover:text-teal-600">
                            {{ $notice->title }}
                        </a>
                    </li>
                @endforeach
            </div>
        @endif
    </div>
</div>
