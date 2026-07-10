@props([
    'name',
    'label' => '',
    'rows' => 5,
    'placeholder' => '',
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

    <textarea

        id="{{ $name }}"

        name="{{ $name }}"

        rows="{{ $rows }}"

        placeholder="{{ $placeholder }}"

        {{ $attributes->merge([
            'class' => '
                w-full
                rounded-xl
                border
                border-slate-300
                px-4
                py-3
                text-slate-700
                transition
                focus:border-blue-600
                focus:ring-4
                focus:ring-blue-100
                resize-none
            '
        ]) }}

    >{{ old($name, $slot) }}</textarea>

    @error($name)

        <p class="mt-2 text-sm text-red-500">

            {{ $message }}

        </p>

    @enderror

</div>