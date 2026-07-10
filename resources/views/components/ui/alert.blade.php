@props([
    'type' => 'success',
    'title' => null,
    'dismissible' => true,
])

@php

$styles = [

    'success' => [
        'bg' => 'bg-emerald-50',
        'border' => 'border-emerald-200',
        'text' => 'text-emerald-800',
        'icon' => 'mdi:check-circle'
    ],

    'error' => [
        'bg' => 'bg-red-50',
        'border' => 'border-red-200',
        'text' => 'text-red-800',
        'icon' => 'mdi:close-circle'
    ],

    'warning' => [
        'bg' => 'bg-amber-50',
        'border' => 'border-amber-200',
        'text' => 'text-amber-800',
        'icon' => 'mdi:alert-circle'
    ],

    'info' => [
        'bg' => 'bg-blue-50',
        'border' => 'border-blue-200',
        'text' => 'text-blue-800',
        'icon' => 'mdi:information'
    ],

];

$config = $styles[$type];

@endphp

<div
    x-data="{ show:true }"
    x-show="show"
    x-transition
    {{ $attributes->merge([
        'class' =>
        "flex items-start gap-4 rounded-2xl border p-4
        {$config['bg']}
        {$config['border']}
        {$config['text']}"
    ]) }}
>

    <iconify-icon
        icon="{{ $config['icon'] }}"
        width="24"
        class="mt-0.5 shrink-0">
    </iconify-icon>

    <div class="flex-1">

        @if($title)

            <h4 class="font-semibold">

                {{ $title }}

            </h4>

        @endif

        <div class="mt-1 text-sm">

            {{ $slot }}

        </div>

    </div>

    @if($dismissible)

        <button
            @click="show=false"
            class="rounded-lg p-1 hover:bg-black/5"
        >

            <iconify-icon
                icon="mdi:close"
                width="18">
            </iconify-icon>

        </button>

    @endif

</div>