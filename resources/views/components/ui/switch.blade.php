@props([
    'name',
    'label' => '',
    'checked' => false,
    'value' => 1,
    'description' => '',
])

<div
    x-data="{ enabled: @js(old($name, $checked)) }"
    class="flex items-start justify-between gap-4"
>

    <div>

        @if($label)

            <label
                for="{{ $name }}"
                class="block text-sm font-semibold text-slate-700">

                {{ $label }}

            </label>

        @endif

        @if($description)

            <p class="mt-1 text-sm text-slate-500">

                {{ $description }}

            </p>

        @endif

    </div>

    <label
        class="relative inline-flex cursor-pointer items-center">

        <input
            id="{{ $name }}"
            name="{{ $name }}"
            type="checkbox"
            value="{{ $value }}"
            class="peer sr-only"
            x-model="enabled"
        >

        <div
            class="peer h-7 w-14 rounded-full bg-slate-300
                   transition-all duration-300
                   peer-checked:bg-blue-600">

        </div>

        <div
            class="absolute left-1 h-5 w-5 rounded-full
                   bg-white shadow-md
                   transition-all duration-300"
            :class="enabled ? 'translate-x-7' : ''">

        </div>

    </label>

</div>

@error($name)

<p class="mt-2 text-sm text-red-500">

    {{ $message }}

</p>

@enderror