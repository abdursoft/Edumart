<!-- Loader -->
<div class="fixed inset-0 z-[999999] flex items-center justify-center
           bg-[#06141f]" id="loader">
    <!-- Background glow -->
    <div class="absolute h-[350px] w-[350px] rounded-full
               bg-blue-500/10 blur-[100px]"></div>

    <div class="absolute h-[250px] w-[250px] rounded-full
               bg-teal-400/10 blur-[90px]"></div>

    <!-- Loader -->
    <div class="relative flex flex-col items-center">

        <!-- Logo / Book icon -->
        <div class="relative mb-7">

            <!-- Glow -->
            <div
                class="absolute inset-0 rounded-2xl
                       bg-gradient-to-r from-blue-500 to-teal-400
                       opacity-30 blur-xl">
            </div>

            <!-- Icon container -->
            <div
                class="relative flex h-16 w-16 items-center justify-center
                       rounded-2xl
                       border border-white/10
                       bg-white/[0.07]
                       shadow-2xl
                       backdrop-blur-xl">
                <!-- Book -->
                <svg class="h-8 w-8 text-teal-400" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                    stroke-width="1.7">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M4 5.5A2.5 2.5 0 0 1 6.5 3H20v15H6.5A2.5 2.5 0 0 0 4 20.5v-15Z" />

                    <path stroke-linecap="round" stroke-linejoin="round" d="M4 20.5A2.5 2.5 0 0 1 6.5 18H20" />

                    <path stroke-linecap="round" d="M8 7h8M8 10h6" />
                </svg>
            </div>

            <!-- Orbit -->
            <div
                class="absolute -inset-3 rounded-3xl
                       border border-teal-400/20
                       animate-[spin_5s_linear_infinite]">
            </div>

        </div>

        <!-- Brand -->
        <h2 class="text-lg font-semibold tracking-[0.2em]
                   text-white">
            EDU<span class="text-teal-400">LEARN</span>
        </h2>

        <!-- Loading text -->
        <p class="mt-2 text-xs tracking-widest
                   text-slate-500 uppercase">
            Loading...
        </p>

        <!-- Progress -->
        <div class="mt-6 h-1 w-40 overflow-hidden rounded-full bg-white/10">
            <div
                class="h-full w-1/2 rounded-full
                       bg-gradient-to-r from-blue-500 to-teal-400
                       animate-[loader_1.5s_ease-in-out_infinite]">
            </div>
        </div>

    </div>
</div>
<style>
@keyframes loader {
    0% {
        transform: translateX(-100%);
    }

    50% {
        transform: translateX(100%);
    }

    100% {
        transform: translateX(250%);
    }
}
</style>

@push('scripts')
    <!-- loader scripts -->
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            const loader = document.getElementById("loader");
            const content = document.getElementById("content");

            // simulate a short delay (like loading assets)
            setTimeout(() => {
                loader.classList.add("hidden");
                content?.classList.remove("hidden");
            }, 500); // same 500ms as your Alpine version
        });
    </script>
@endpush
