@props([
    'variant' => 'primary',
    'size' => 'md',
    'dot' => false,
    'icon' => null,
    'pill' => true,
])

@php

$variants = [

    'primary' => 'bg-blue-100 text-blue-700 ring-blue-200',

    'secondary' => 'bg-slate-100 text-slate-700 ring-slate-200',

    'success' => 'bg-emerald-100 text-emerald-700 ring-emerald-200',

    'danger' => 'bg-red-100 text-red-700 ring-red-200',

    'warning' => 'bg-amber-100 text-amber-700 ring-amber-200',

    'info' => 'bg-cyan-100 text-cyan-700 ring-cyan-200',

    'purple' => 'bg-violet-100 text-violet-700 ring-violet-200',

    'pink' => 'bg-pink-100 text-pink-700 ring-pink-200',

    'dark' => 'bg-slate-800 text-white',

];

$sizes = [

    'sm' => 'px-2 py-1 text-xs',

    'md' => 'px-3 py-1.5 text-sm',

    'lg' => 'px-4 py-2 text-base',

];

@endphp

<span
    {{ $attributes->merge([
        'class' =>
            'inline-flex items-center gap-2
            font-semibold
            ring-1
            transition
            '.$sizes[$size].'
            '.$variants[$variant].'
            '.($pill ? 'rounded-full' : 'rounded-xl')
    ]) }}
>

    @if($dot)

        <span class="h-2 w-2 rounded-full bg-current"></span>

    @endif

    @if($icon)

        <iconify-icon
            icon="{{ $icon }}"
            width="16">
        </iconify-icon>

    @endif

    {{ $slot }}

</span>