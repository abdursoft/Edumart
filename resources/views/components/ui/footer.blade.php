<footer class="relative mt-12 overflow-hidden rounded-tl-[32px] rounded-tr-[32px] bg-gradient-to-br from-slate-950 via-slate-900 to-blue-950 text-white shadow-2xl">

    <!-- Background Glow -->

    <div class="absolute -left-32 -top-32 h-80 w-80 rounded-full bg-blue-600/20 blur-[140px]"></div>

    <div class="absolute -right-32 bottom-0 h-96 w-96 rounded-full bg-violet-600/20 blur-[140px]"></div>

    <div class="relative z-10">

        <!-- Main Footer -->

        <div class="grid gap-8 p-8 lg:grid-cols-4  max-w-[1400px] mx-auto">

            <!-- ================================================= -->
            <!-- Company -->
            <!-- ================================================= -->

            <div class="py-8">

                <div class="flex items-center gap-4">

                    <div class="flex h-16 w-16 items-center justify-center rounded-2xl bg-gradient-to-br from-blue-500 to-indigo-600 shadow-xl">

                        <iconify-icon
                            icon="mdi:school"
                            width="34">
                        </iconify-icon>

                    </div>

                    <div>

                        <h2 class="text-2xl font-bold">

                            EduMart ERP

                        </h2>

                        <p class="text-sm text-slate-300">

                            School Management System

                        </p>

                    </div>

                </div>

                <p class="mt-6 leading-8 text-slate-300">

                    Modern education management software for schools,
                    colleges and universities.

                    Manage students, teachers, attendance,
                    examinations and accounting from one place.

                </p>

            </div>

            <!-- ================================================= -->
            <!-- Quick Links -->
            <!-- ================================================= -->

            <div>

                <h3 class="mb-6 text-lg font-semibold">

                    Quick Links

                </h3>

                <ul class="space-y-4">

                    @foreach([
                        ['Dashboard','heroicons:home'],
                        ['Students','mdi:account-group-outline'],
                        ['Teachers','mdi:teach'],
                        ['Classes','mdi:google-classroom'],
                        ['Attendance','mdi:calendar-check'],
                        ['Examinations','mdi:file-document-outline'],
                    ] as $link)

                        <li>

                            <a
                                href="#"
                                class="group flex items-center gap-3 text-slate-300 transition duration-300 hover:text-white">

                                <span class="rounded-lg bg-white/5 p-2 transition group-hover:bg-blue-500">

                                    <iconify-icon icon="{{ $link[1] }}"></iconify-icon>

                                </span>

                                {{ $link[0] }}

                            </a>

                        </li>

                    @endforeach

                </ul>

            </div>

            <!-- ================================================= -->
            <!-- Resources -->
            <!-- ================================================= -->

            <div>

                <h3 class="mb-6 text-lg font-semibold">

                    Resources

                </h3>

                <div class="space-y-4">

                    @foreach([
                        'Documentation',
                        'API Reference',
                        'Support Center',
                        'Release Notes',
                        'Privacy Policy',
                        'Terms & Conditions',
                    ] as $item)

                        <a
                            href="#"
                            class="block rounded-xl border border-white/5 bg-white/5 px-4 py-3 text-slate-300 transition hover:border-blue-500 hover:bg-blue-500/20 hover:text-white">

                            {{ $item }}

                        </a>

                    @endforeach

                </div>

            </div>

            <!-- ================================================= -->
            <!-- Contact -->
            <!-- ================================================= -->

            <div>

                <h3 class="mb-6 text-lg font-semibold">

                    Contact Us

                </h3>

                <div class="space-y-5">

                    <div class="flex gap-4 rounded-2xl border border-white/10 bg-white/5 p-4">

                        <div class="rounded-xl bg-blue-500/20 p-3">

                            <iconify-icon
                                icon="mdi:map-marker"
                                class="text-blue-400"
                                width="22">
                            </iconify-icon>

                        </div>

                        <div>

                            <h4 class="font-semibold">

                                Office

                            </h4>

                            <p class="mt-1 text-sm text-slate-300">

                                House #12, Road #5<br>

                                Dhanmondi, Dhaka 1209

                            </p>

                        </div>

                    </div>

                    <div class="flex gap-4 rounded-2xl border border-white/10 bg-white/5 p-4">

                        <div class="rounded-xl bg-emerald-500/20 p-3">

                            <iconify-icon
                                icon="mdi:email-outline"
                                class="text-emerald-400"
                                width="22">
                            </iconify-icon>

                        </div>

                        <div>

                            <h4 class="font-semibold">

                                Email

                            </h4>

                            <p class="mt-1 text-sm text-slate-300">

                                support@edumart.com

                            </p>

                        </div>

                    </div>

                    <div class="flex gap-4 rounded-2xl border border-white/10 bg-white/5 p-4">

                        <div class="rounded-xl bg-amber-500/20 p-3">

                            <iconify-icon
                                icon="mdi:phone-outline"
                                class="text-amber-400"
                                width="22">
                            </iconify-icon>

                        </div>

                        <div>

                            <h4 class="font-semibold">

                                Phone

                            </h4>

                            <p class="mt-1 text-sm text-slate-300">

                                +880 1712 345678

                            </p>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <!-- Bottom -->

        <div class="border-t border-white/10 bg-black/20 backdrop-blur-xl">

            <div class="max-w-[1400px] mx-auto flex flex-col items-center justify-between gap-6 px-8 py-6 md:flex-row">

                <div>

                    <h4 class="font-semibold">

                        © {{ now()->year }} EduMart ERP

                    </h4>

                    <p class="mt-1 text-sm text-slate-400">

                        Crafted with ❤️ by AbdurSoft. All rights reserved.

                    </p>

                </div>

                <!-- Social -->

                <div class="flex items-center gap-3">

                    @foreach([
                        ['mdi:facebook','#'],
                        ['mdi:twitter','#'],
                        ['mdi:linkedin','#'],
                        ['mdi:instagram','#'],
                        ['mdi:github','#']
                    ] as $social)

                        <a
                            href="{{ $social[1] }}"
                            class="flex h-12 w-12 items-center justify-center rounded-2xl border border-white/10 bg-white/5 transition duration-300 hover:-translate-y-1 hover:border-blue-500 hover:bg-blue-600">

                            <iconify-icon
                                icon="{{ $social[0] }}"
                                width="22">
                            </iconify-icon>

                        </a>

                    @endforeach

                </div>

            </div>

        </div>

    </div>

</footer>