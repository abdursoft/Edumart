@props([
    'delay' => 0,
    'duration' => 500,
])

<div
    x-data="{ show:false }"
    x-init="setTimeout(()=>show=true, {{ $delay }})"
    x-show="show"
    x-transition:enter="transition ease-out"
    x-transition:enter-start="opacity-0 translate-y-4"
    x-transition:enter-end="opacity-100 translate-y-0"
    x-transition:leave="transition ease-in"
    x-transition:leave-start="opacity-100"
    x-transition:leave-end="opacity-0"
    style="transition-duration: {{ $duration }}ms"
>

    {{ $slot }}

</div>