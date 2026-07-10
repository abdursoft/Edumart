@props([
    'title' => null,
    'items' => [],
])

<div class="mb-6 flex flex-col gap-4 md:flex-row md:items-center md:justify-between">

    <div>

        @if($title)
            <h1 class="text-3xl font-bold tracking-tight text-slate-800">
                {{ $title }}
            </h1>
        @endif

        @if(count($items))

            <nav
                class="mt-2 flex items-center text-sm"
                aria-label="Breadcrumb">

                <ol class="flex flex-wrap items-center gap-2 text-slate-500">

                    @foreach($items as $item)

                        <li class="flex items-center gap-2">

                            @if(!$loop->first)
                                <iconify-icon
                                    icon="heroicons:chevron-right-20-solid"
                                    class="text-slate-400">
                                </iconify-icon>
                            @endif

                            @if(isset($item['url']) && !$loop->last)

                                <a
                                    href="{{ $item['url'] }}"
                                    class="transition hover:text-blue-600">

                                    @if(isset($item['icon']))
                                        <iconify-icon
                                            icon="{{ $item['icon'] }}"
                                            class="mr-1 inline">
                                        </iconify-icon>
                                    @endif

                                    {{ $item['label'] }}

                                </a>

                            @else

                                <span class="font-semibold text-slate-800">

                                    @if(isset($item['icon']))
                                        <iconify-icon
                                            icon="{{ $item['icon'] }}"
                                            class="mr-1 inline">
                                        </iconify-icon>
                                    @endif

                                    {{ $item['label'] }}

                                </span>

                            @endif

                        </li>

                    @endforeach

                </ol>

            </nav>

        @endif

    </div>

    @isset($actions)

        <div class="flex items-center gap-2">

            {{ $actions }}

        </div>

    @endisset

</div>