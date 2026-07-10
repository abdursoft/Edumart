@props([
    'number',
    'title',
    'icon' => null,
    'last' => false
])

<div class="relative flex flex-1 items-center">

    <div class="flex flex-col items-center">

        <button

            @click="current={{ $number }}"

            :class="{

                'bg-blue-600 text-white shadow-lg shadow-blue-500/25': current >= {{ $number }},

                'bg-white text-slate-500 border border-slate-300': current < {{ $number }}

            }"

            class="flex h-12 w-12 items-center justify-center rounded-full transition-all duration-300"

        >

            <template x-if="current > {{ $number }}">

                <iconify-icon
                    icon="mdi:check"
                    width="22">
                </iconify-icon>

            </template>

            <template x-if="current <= {{ $number }}">

                <span>

                    @if($icon)

                        <iconify-icon icon="{{ $icon }}"></iconify-icon>

                    @else

                        {{ $number }}

                    @endif

                </span>

            </template>

        </button>

        <h4 class="mt-3 text-sm font-semibold text-slate-700">

            {{ $title }}

        </h4>

    </div>

    @if(!$last)

        <div

            class="mx-4 h-1 flex-1 rounded-full bg-slate-200"

        >

            <div

                :class="current > {{ $number }}

                    ? 'w-full'

                    : 'w-0'"

                class="h-full rounded-full bg-blue-600 transition-all duration-500"

            ></div>

        </div>

    @endif

</div>