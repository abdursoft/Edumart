@props([

    'name',

    'icon'=>null,

    'badge'=>null,

])

<button

    @click="tab='{{ $name }}'"

    :class="tab=='{{ $name }}'

        ? 'bg-blue-600 text-white shadow'

        : 'text-slate-600 hover:bg-slate-100'"

    class="flex items-center gap-2 rounded-xl px-5 py-3 font-medium transition duration-300"

>

    @if($icon)

        <iconify-icon icon="{{ $icon }}"></iconify-icon>

    @endif

    {{ $slot }}

    @if($badge)

        <span

            class="rounded-full bg-white/20 px-2 py-0.5 text-xs"

        >

            {{ $badge }}

        </span>

    @endif

</button>