@props([
    'href' => '#',
    'icon' => null,
    'danger' => false,
])

<a
    href="{{ $href }}"
    {{ $attributes }}
    class="flex items-center gap-3 rounded-xl px-4 py-3 text-sm font-medium transition
    {{ $danger
        ? 'text-red-600 hover:bg-red-50'
        : 'text-slate-700 hover:bg-slate-100'
    }}"
>

    @if($icon)

        <iconify-icon
            icon="{{ $icon }}"
            width="20">
        </iconify-icon>

    @endif

    {{ $slot }}

</a>