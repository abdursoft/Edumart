@props([
    'name',
    'label' => '',
    'value' => 1,
    'checked' => false,
])

<label class="group inline-flex cursor-pointer items-start gap-3">

    <input
        type="checkbox"
        id="{{ $name }}"
        name="{{ $name }}"
        value="{{ $value }}"
        @checked(old($name, $checked))
        {{ $attributes->merge([
            'class' => '
                mt-1 h-5 w-5 rounded-md
                border-slate-300
                text-blue-600
                focus:ring-4
                focus:ring-blue-100
            '
        ]) }}
    >

    <div>

        <span class="font-medium text-slate-700 group-hover:text-blue-600">
            {{ $label }}
        </span>

        {{ $slot }}

    </div>

</label>

@error($name)
    <p class="mt-1 text-sm text-red-500">
        {{ $message }}
    </p>
@enderror