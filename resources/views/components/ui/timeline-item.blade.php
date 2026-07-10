@props([
    'title',
    'time' => null,
    'description' => null,
    'icon' => 'mdi:check',
    'color' => 'blue',
])

@php

$colors = [

    'blue' => [
        'bg' => 'bg-blue-100',
        'text' => 'text-blue-600',
        'line' => 'bg-blue-200',
    ],

    'green' => [
        'bg' => 'bg-emerald-100',
        'text' => 'text-emerald-600',
        'line' => 'bg-emerald-200',
    ],

    'red' => [
        'bg' => 'bg-red-100',
        'text' => 'text-red-600',
        'line' => 'bg-red-200',
    ],

    'yellow' => [
        'bg' => 'bg-amber-100',
        'text' => 'text-amber-600',
        'line' => 'bg-amber-200',
    ],

    'purple' => [
        'bg' => 'bg-violet-100',
        'text' => 'text-violet-600',
        'line' => 'bg-violet-200',
    ],

];

$c = $colors[$color];

@endphp

<div class="relative flex gap-5 pb-8 last:pb-0">

    {{-- Vertical Line --}}
    <div class="absolute left-5 top-12 bottom-0 w-px {{ $c['line'] }} last:hidden"></div>

    {{-- Icon --}}
    <div class="relative z-10 flex h-10 w-10 shrink-0 items-center justify-center rounded-full {{ $c['bg'] }}">

        <iconify-icon
            icon="{{ $icon }}"
            class="{{ $c['text'] }}"
            width="20">
        </iconify-icon>

    </div>

    {{-- Content --}}
    <div class="flex-1">

        <div class="flex flex-col gap-1 md:flex-row md:items-center md:justify-between">

            <h4 class="font-semibold text-slate-800">

                {{ $title }}

            </h4>

            @if($time)

                <span class="text-sm text-slate-500">

                    {{ $time }}

                </span>

            @endif

        </div>

        @if($description)

            <p class="mt-2 leading-7 text-slate-600">

                {{ $description }}

            </p>

        @endif

        @if(trim($slot))

            <div class="mt-3">

                {{ $slot }}

            </div>

        @endif

    </div>

</div>