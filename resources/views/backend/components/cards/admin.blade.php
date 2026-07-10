<div
    class="group relative overflow-hidden rounded-xl bg-gradient-to-br {{ $color }} p-4 shadow-lg transition-all duration-300 hover:-translate-y-1 hover:shadow-xl">

    <!-- Background Decoration -->
    <div class="absolute -right-8 -top-8 h-20 w-20 rounded-full bg-white/10"></div>
    <div class="absolute -bottom-8 -left-8 h-24 w-24 rounded-full bg-black/5"></div>

    <div class="relative z-10">

        <!-- Icon -->
        <div class="mb-3 flex h-10 w-10 items-center justify-center rounded-lg bg-white/20 backdrop-blur">
            <i class="{{ $icon }} text-lg text-white"></i>
        </div>

        <!-- Label -->
        <p class="text-xs font-medium uppercase tracking-wide text-white/80">
            {{ $title }}
        </p>

        <div class="mt-1 flex items-center justify-between">
            <!-- Total -->
            <h2 class="mt-1 text-2xl font-bold text-white">
                {{ $total }}
            </h2>

            <!-- Button -->
            <div class="mt-1">
                <a href="{{ $route }}"
                    class="inline-flex items-center gap-1 rounded-lg bg-white/20 px-3 py-1.5 text-xs font-medium text-white backdrop-blur transition hover:bg-white hover:text-green-700">

                    View

                    <svg xmlns="http://www.w3.org/2000/svg"
                        class="h-3.5 w-3.5 transition-transform group-hover:translate-x-1" fill="none"
                        viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                    </svg>

                </a>
            </div>

        </div>
    </div>
</div>