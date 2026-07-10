@props([
    'src' => null,
    'name' => '',
    'size' => 'md',
    'rounded' => true,
    'online' => false,
    'verified' => false,
])

@php

$sizes = [

    'xs' => 'h-8 w-8 text-xs',

    'sm' => 'h-10 w-10 text-sm',

    'md' => 'h-12 w-12 text-base',

    'lg' => 'h-16 w-16 text-lg',

    'xl' => 'h-20 w-20 text-xl',

    '2xl' => 'h-28 w-28 text-3xl',

];

$initials = collect(explode(' ', trim($name)))
            ->map(fn($part) => strtoupper(substr($part,0,1)))
            ->take(2)
            ->implode('');

@endphp

<div class="relative inline-flex">

    @if($src)

        <img
            src="{{ $src }}"
            alt="{{ $name }}"
            class="{{ $sizes[$size] }}
                   {{ $rounded ? 'rounded-full' : 'rounded-2xl' }}
                   object-cover
                   ring-2
                   ring-white
                   shadow-md">

    @else

        <div
            class="{{ $sizes[$size] }}
                   {{ $rounded ? 'rounded-full' : 'rounded-2xl' }}
                   flex items-center justify-center
                   bg-gradient-to-br
                   from-blue-600
                   to-indigo-700
                   font-bold
                   text-white
                   shadow-md">

            {{ $initials }}

        </div>

    @endif

    {{-- Online Indicator --}}

    @if($online)

        <span
            class="absolute bottom-0 right-0 h-3.5 w-3.5 rounded-full border-2 border-white bg-emerald-500">
        </span>

    @endif

    {{-- Verified Badge --}}

    @if($verified)

        <span
            class="absolute -right-1 -top-1 flex h-5 w-5 items-center justify-center rounded-full bg-blue-600 text-white shadow">

            <iconify-icon
                icon="mdi:check-bold"
                width="12">
            </iconify-icon>

        </span>

    @endif

</div>