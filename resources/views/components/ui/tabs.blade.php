@props([
    'default' => 'general',
    'style' => 'pill', // pill | underline
])

<div
    x-data="{ tab:'{{ $default }}' }"
    class="w-full"
>

    <div

        class="mb-6 flex flex-wrap gap-2

        {{ $style == 'pill'

            ? 'rounded-2xl border border-slate-200 bg-slate-50 p-2'

            : 'border-b border-slate-200'

        }}"

    >

        {{ $tabs }}

    </div>

    <div>

        {{ $slot }}

    </div>

</div>