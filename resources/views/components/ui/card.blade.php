@props([
    'type' => 'button',
    'variant' => 'primary',
    'size' => 'md',
    'icon' => null,
    'loading' => false,
])

@php

$variants = [

    'primary' => 'bg-blue-600 text-white hover:bg-blue-700 shadow-blue-200',

    'secondary' => 'bg-slate-600 text-white hover:bg-slate-700',

    'success' => 'bg-emerald-600 text-white hover:bg-emerald-700',

    'danger' => 'bg-red-600 text-white hover:bg-red-700',

    'warning' => 'bg-amber-500 text-black hover:bg-amber-600',

    'outline' => 'border border-slate-300 bg-white text-slate-700 hover:bg-slate-100',

    'ghost' => 'text-slate-700 hover:bg-slate-100',

    'link' => 'text-blue-600 hover:underline p-0 shadow-none',

];

$sizes = [

    'sm' => 'h-9 px-4 text-sm',

    'md' => 'h-11 px-6 text-sm',

    'lg' => 'h-12 px-8 text-base',

];

@endphp

<button

    type="{{ $type }}"

    {{ $attributes->merge([
        'class' =>
            'inline-flex items-center justify-center gap-2 rounded-xl font-semibold
            transition-all duration-200
            hover:-translate-y-0.5
            active:translate-y-0
            disabled:opacity-50
            disabled:pointer-events-none
            shadow-lg ' .
            $variants[$variant] . ' ' .
            $sizes[$size]
    ]) }}

>

    @if($loading)

        <svg
            class="h-4 w-4 animate-spin"
            fill="none"
            viewBox="0 0 24 24">

            <circle
                class="opacity-25"
                cx="12"
                cy="12"
                r="10"
                stroke="currentColor"
                stroke-width="4"/>

            <path
                class="opacity-75"
                fill="currentColor"
                d="M4 12a8 8 0 018-8"/>

        </svg>

    @elseif($icon)

        <iconify-icon
            icon="{{ $icon }}"
            width="18">
        </iconify-icon>

    @endif

    {{ $slot }}

</button>