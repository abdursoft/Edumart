@props([
    'label' => '',
    'name',
    'type' => 'text',
    'placeholder' => '',
    'value' => '',
    'icon' => null,
    'required' => false,
])

<div
    x-data="{
        showPassword:false
    }"
>

    @if($label)
        <label
            for="{{ $name }}"
            class="mb-2 block text-sm font-semibold text-slate-700"
        >
            {{ $label }}

            @if($required)
                <span class="text-red-500">*</span>
            @endif
        </label>
    @endif

    <div class="relative">

        @if($icon)

            <div class="absolute left-4 top-1/2 -translate-y-1/2 text-slate-400">

                <iconify-icon
                    icon="{{ $icon }}"
                    width="20">
                </iconify-icon>

            </div>

        @endif

        <input

            id="{{ $name }}"

            name="{{ $name }}"

            type="{{ $type === 'password' ? '' : $type }}"

            :type="'{{ $type }}' == 'password'
                    ? (showPassword ? 'text' : 'password')
                    : '{{ $type }}'"

            value="{{ old($name,$value) }}"

            placeholder="{{ $placeholder }}"

            {{ $required ? 'required' : '' }}

            {{ $attributes->merge([
                'class'=>
                    'w-full h-12 rounded-xl border border-slate-300 bg-white
                    transition
                    focus:border-blue-600
                    focus:ring-4
                    focus:ring-blue-100
                    outline-none
                    '.($icon?'pl-12':'pl-4').
                    ($type=='password'?' pr-12':'').
                    ' text-slate-700'
            ]) }}

        >

        @if($type=="password")

            <button

                type="button"

                @click="showPassword=!showPassword"

                class="absolute right-4 top-1/2 -translate-y-1/2 text-slate-400 hover:text-blue-600"

            >

                <iconify-icon
                    :icon="showPassword
                        ? 'mdi:eye-off-outline'
                        : 'mdi:eye-outline'"
                    width="20">
                </iconify-icon>

            </button>

        @endif

    </div>

    @error($name)

        <p class="mt-2 text-sm text-red-500">

            {{ $message }}

        </p>

    @enderror

</div>