@props([
    'title' => null,
])

<div {{ $attributes->merge(['class' => 'rounded-2xl border border-slate-200 bg-white shadow-sm']) }}>

    @if($title)

        <div class="border-b border-slate-200 px-6 py-4">

            <h3 class="text-lg font-semibold text-slate-800">

                {{ $title }}

            </h3>

        </div>

    @endif

    <div class="relative p-6">

        {{ $slot }}

    </div>

</div>