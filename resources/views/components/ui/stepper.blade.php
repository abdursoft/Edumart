@props([
    'step' => 1,
    'steps',
])

<div
    x-data="{ current: {{ $step }} }"
    class="w-full"
>

    <div class="mb-10 flex items-center justify-between">

        {{ $steps }}

    </div>

    <div>

        {{ $slot }}

    </div>

</div>