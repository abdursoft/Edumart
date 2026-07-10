@props([
    'name',
    'label' => '',
    'placeholder' => 'Select an option',
    'required' => false,
])

<div>

    @if($label)

        <label
            for="{{ $name }}"
            class="mb-2 block text-sm font-semibold text-slate-700">

            {{ $label }}

            @if($required)
                <span class="text-red-500">*</span>
            @endif

        </label>

    @endif

    <select

        id="{{ $name }}"

        name="{{ $name }}"

        {{ $attributes->merge([
            'class' => '
                h-12
                w-full
                rounded-xl
                border
                border-slate-300
                bg-white
                px-4
                text-slate-700
                transition
                focus:border-blue-600
                focus:ring-4
                focus:ring-blue-100
            '
        ]) }}

    >

        <option value="">
            {{ $placeholder }}
        </option>

        {{ $slot }}

    </select>

    @error($name)

        <p class="mt-2 text-sm text-red-500">

            {{ $message }}

        </p>

    @enderror

</div>