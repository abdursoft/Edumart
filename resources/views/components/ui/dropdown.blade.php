@props([
    'align' => 'right',
    'width' => '64',
])

@php
$alignment = [
    'left' => 'left-0 origin-top-left',
    'right' => 'right-0 origin-top-right',
][$align];
@endphp

<div
    x-data="{ open: false }"
    class="relative inline-block"
>

    <!-- Trigger -->

    <div
        @click="open=!open"
        class="cursor-pointer"
    >
        {{ $trigger }}
    </div>

    <!-- Menu -->

    <div
        x-show="open"
        @click.outside="open=false"
        @keydown.escape.window="open=false"

        x-transition:enter="transition ease-out duration-200"
        x-transition:enter-start="opacity-0 scale-95 -translate-y-2"
        x-transition:enter-end="opacity-100 scale-100 translate-y-0"

        x-transition:leave="transition ease-in duration-150"
        x-transition:leave-start="opacity-100 scale-100"
        x-transition:leave-end="opacity-0 scale-95"

        class="absolute z-50 mt-3 w-{{ $width }} {{ $alignment }}
               overflow-hidden rounded-2xl
               border border-slate-200
               bg-white
               shadow-2xl"
    >

        <div class="p-2">

            {{ $slot }}

        </div>

    </div>

</div>