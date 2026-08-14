<div class="relative hidden overflow-hidden lg:col-span-3 lg:flex">

    <!-- Background Image -->
    <img
        src="{{ asset('images/auth/campus.jpg') }}"
        alt="{{ site()->site_name }}"
        class="absolute inset-0 h-full w-full object-cover transition duration-[6000ms] hover:scale-110">

    <!-- Overlay -->
    <div class="absolute inset-0 bg-gradient-to-br from-blue-950/95 via-blue-900/85 to-indigo-900/80"></div>

    <!-- Decorative Circles -->
    <div class="absolute -top-32 -left-32 h-96 w-96 rounded-full bg-blue-500/20 blur-3xl"></div>

    <div class="absolute bottom-0 right-0 h-80 w-80 rounded-full bg-indigo-500/20 blur-3xl"></div>

    <!-- Content -->
    <div class="relative z-10 flex h-full flex-col justify-between p-16 text-white">

        <!-- Top -->

        <div>

            <img
                src="{{ asset('images/logo.png') }}"
                class="float mb-8 h-24 w-24 rounded-2xl bg-white p-2 shadow-2xl"
                alt="Logo">

            <h1 class="text-5xl font-black leading-tight">

                {{ site()->site_name }}

            </h1>

            <p class="mt-6 max-w-xl text-xl leading-9 text-blue-100">

                Empowering minds, inspiring innovation, and building future
                leaders through excellence in education.

            </p>

        </div>

        <!-- Statistics -->

        <div class="grid grid-cols-2 gap-6">

            <div class="rounded-2xl bg-white/10 p-6 backdrop-blur-md">

                <div class="text-4xl font-bold">
                    3,500+
                </div>

                <div class="mt-2 text-blue-100">
                    Active Students
                </div>

            </div>

            <div class="rounded-2xl bg-white/10 p-6 backdrop-blur-md">

                <div class="text-4xl font-bold">
                    150+
                </div>

                <div class="mt-2 text-blue-100">
                    Expert Teachers
                </div>

            </div>

            <div class="rounded-2xl bg-white/10 p-6 backdrop-blur-md">

                <div class="text-4xl font-bold">
                    98%
                </div>

                <div class="mt-2 text-blue-100">
                    Success Rate
                </div>

            </div>

            <div class="rounded-2xl bg-white/10 p-6 backdrop-blur-md">

                <div class="text-4xl font-bold">
                    Since 1998
                </div>

                <div class="mt-2 text-blue-100">
                    Excellence in Education
                </div>

            </div>

        </div>

        <!-- Footer -->

        <div>

            <blockquote class="border-l-4 border-amber-400 pl-5 text-lg italic text-blue-100">

                "Education is the passport to the future, for tomorrow belongs
                to those who prepare for it today."

            </blockquote>

        </div>

    </div>

</div>

<style>
    @keyframes float {

    0%,100%{
        transform:translateY(0px);
    }

    50%{
        transform:translateY(-12px);
    }

}

.float{
    animation:float 6s ease-in-out infinite;
}
</style>