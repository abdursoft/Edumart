<div class="space-y-2 mb-2">
    <div class="border rounded-md overflow-hidden">
        <!-- Header -->
        <button type="button"
            class="accordion-btn w-full flex justify-between items-center px-4 py-3 bg-gray-100 hover:bg-gray-200 transition"
            data-target="accordion-{{ $key }}">
            <span class="font-semibold text-left">
                {{ $title }}
            </span>

            <svg class="w-4 h-4 transition-transform" fill="none" stroke="currentColor" stroke-width="2"
                viewBox="0 0 24 24">
                <path d="M6 9l6 6 6-6" />
            </svg>
        </button>

        <!-- Content -->
        <div id="accordion-{{ $key }}" class="accordion-content hidden px-4 py-3 bg-white text-sm">
            {{$slot}}
        </div>
    </div>
</div>
