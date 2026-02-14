<!-- Notice -->
<div class="mt-4 hidden md:block">
    <div class="text-sm font-semibold text-gray-700">{{ text('notice') }}</div>
    <div class="smartmarquee h-[140px] mt-2 space-y-1 relative">
        <div class="containers w-full">
            @foreach(notice(5,'notice') as $notice)
                @if($notice->type == 'notice')
                    <li class="text-sm leading-6">
                        <a href="/notice-single/{{ $notice->title }}/{{ $notice->id }}" class="hover:text-red-600">
                            {{ $notice->title }}
                        </a>
                    </li>
                @endif
            @endforeach
        </div>
    </div>
</div>
