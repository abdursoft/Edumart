@props([
    'title' => 'Nothing Found',
    'description' => 'There is no data available.',
    'icon' => 'mdi:database-off-outline',
    'compact' => false,
])

<div
    {{ $attributes->merge([
        'class' => 'flex flex-col items-center justify-center text-center'
    ]) }}
>

    <div class="
        flex items-center justify-center
        {{ $compact ? 'h-20 w-20' : 'h-28 w-28' }}
        rounded-full
        bg-gradient-to-br
        from-blue-50
        to-indigo-100
        shadow-inner
    ">

        <iconify-icon
            icon="{{ $icon }}"
            width="{{ $compact ? 36 : 56 }}"
            class="text-blue-600">
        </iconify-icon>

    </div>

    <h3 class="mt-6 text-2xl font-bold text-slate-800">

        {{ $title }}

    </h3>

    <p class="mt-3 max-w-md leading-7 text-slate-500">

        {{ $description }}

    </p>

    @if(trim($slot))

        <div class="mt-8">

            {{ $slot }}

        </div>

    @endif

</div>