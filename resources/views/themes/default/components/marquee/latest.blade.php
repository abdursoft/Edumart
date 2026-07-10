    <div class="mx-auto flex h-10 max-w-7xl items-center">

        <!-- Latest -->
        <div class="flex h-full items-center bg-amber-500 px-5 font-semibold uppercase tracking-wide text-black">
            Latest
        </div>

        <!-- News -->
        <div class="flex-1 overflow-hidden">

            <div class="marquee whitespace-nowrap">

                @foreach (notice() as $key => $news)
                    <a href="/news/{{ $news->id }}/{{ $news->title }}"
                        class="mx-8 hover:text-amber-400 transition-all delay-100">
                        {{ $news->title }}
                    </a> {{ $key < count(notice()) - 1 ? '|' : '' }}
                @endforeach

            </div>

        </div>

    </div>
