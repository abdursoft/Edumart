<!-- default theme header -->
<div class="w-full bg-slate-900/80 backdrop-blur-sm text-white hidden">
    <div class="w-full max-w-7xl mx-auto px-2 md:px-4 lg:px-6">
        <div class="w-full flex items-center justify-between py-2">
            <div class="flex items-center justify-between md:justify-start gap-2 w-full md:w-1/2 pl-1">
                <p><a class="flex items-center gap-1" href="mailto:{{ site()->contact_email }}"><iconify-icon
                            icon="fontisto:email" width="24" height="24"></iconify-icon>
                        {{ site()->contact_email }}</a></p>
                <p><a class="flex items-center gap-1" href="tel:{{ site()->contact_phone }}"><iconify-icon
                            icon="line-md:phone-loop" width="24" height="24"></iconify-icon>
                        {{ site()->contact_phone }}</a></p>
            </div>
            <div class="w-1/2 hidden md:flex items-center justify-end gap-3 text-sm pr-1">
                @if (auth()->check())
                    <a href="{{ route('logout') }}"
                        class="flex items-center gap-2 hover:text-amber-400 transition-all delay-100"><iconify-icon
                            icon="solar:login-linear" width="24" height="24"></iconify-icon> Logout</a>
                    <a href="{{ route(auth()->user()->role . '.dashboard') }}"
                        class="flex items-center gap-2 hover:text-amber-400 transition-all delay-100"><iconify-icon
                            icon="material-symbols:empty-dashboard-rounded" width="24"
                            height="24"></iconify-icon></iconify-icon> Dashboard</a>
                @else
                    <a href="{{ route('login') }}"
                        class="flex items-center gap-2 hover:text-amber-400 transition-all delay-100"><iconify-icon
                            icon="solar:login-linear" width="24" height="24"></iconify-icon> Login</a>
                @endif
                <a href="{{ route('admission') }}"
                    class="flex items-center gap-2 hover:text-amber-400 transition-all delay-100"><iconify-icon
                        icon="mage:contact-book" width="24" height="24"></iconify-icon> Admission</a>
                <p class="{{ isOpen() ? 'text-green-600 font-semibold' : 'text-red-500 text-semibold italic' }}">
                    {{ isOpen() ? 'Open' : 'Closed' }}</p>
            </div>
        </div>
        <div class="w-full flex items-center justify-center gap-3 md:justify-between"
            style="background: {{ site()->header_color ?? 'oklch(0.4 0.06 188.43)' }};color:{{ site()->text_color ?? '#333' }}">
            <div class="mid-nav-item">
                <a href="/"><img src="{{ Storage::url(site()->logo) }}"
                        alt="{{ site()->name ?? 'eduCraft' }}"></a>
            </div>
            <div class="mid-nav-item flex flex-col items-start md:items-center">
                <h1 class="text-lg md:text-2xl lg:text-4xl font-semibold md:font-bold">
                    {{ session('lang') == 'bn' ? site('name_bn') : site('site_name') }}</h1>
                <p class="slogan">{{ session('lang') == 'bn' ? site('slogan') : site('slogan_en') }}</p>
                <div class="collage_code">Institute Code : {{ site('code') ?? '12345' }} | EIIN Code:
                    {{ site('gov_id') ?? '123ABC' }}
                </div>
                <div class="flex items-center justify-center gap-5">
                    <small
                        class="text-sm">{{ site('thana')?->name . ', ' . site('district')?->name . ', ' . site('post') }}</small>
                </div>
            </div>
            <div class="hidden md:flex mid-nav-item pr-2 flex items-center justify-center flex-col">
                <x-clock-timer styleClass="bg-gray-600 p-5 rounded-md shadow-lg" />
                {{ date('l') }}
            </div>
        </div>
        @include(theme('components.partials.nav'))
    </div>
</div>

<div class="bg-slate-950 text-white">
    @include(theme('components.marquee.latest'))
</div>
<div class="bg-slate-800 text-sm text-gray-200">

    <div class="mx-auto flex max-w-7xl flex-col items-center justify-between gap-3 px-0 py-3 md:flex-row">

        <!-- Left -->

        <div class="flex flex-wrap items-center gap-6">

            <a href="mailto:{{ site()->contact_email }}" class="flex items-center gap-2 hover:text-amber-400">

                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                    stroke="currentColor">

                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 12H8m8 0l-8 0m16-6v12a2 2 0 01-2 2H6a2
                        2 0 01-2-2V6a2 2 0 012-2h12a2 2 0 012 2z" />

                </svg>

                {{ site()->contact_email }}

            </a>

            <a href="tel:{{ site()->contact_phone }}" class="flex items-center gap-2 hover:text-amber-400">

                ☎ {{ site()->contact_phone }}

            </a>

            <span class="flex items-center gap-2">

                📍 {{ site()->contact_address }}

            </span>

        </div>

        <!-- Right -->

        <div class="flex items-center gap-6">

            @if (auth()->check())
                <a href="{{ route('logout') }}"
                    class="flex items-center gap-2 hover:text-amber-400 transition-all delay-100"><iconify-icon
                        icon="solar:login-linear" width="24" height="24"></iconify-icon> Logout</a>
                <a href="{{ route(auth()->user()->role . '.dashboard') }}"
                    class="flex items-center gap-2 hover:text-amber-400 transition-all delay-100"><iconify-icon
                        icon="material-symbols:empty-dashboard-rounded" width="24"
                        height="24"></iconify-icon></iconify-icon> Dashboard</a>
            @else
                <a href="{{ route('login') }}"
                    class="flex items-center gap-2 hover:text-amber-400 transition-all delay-100"><iconify-icon
                        icon="solar:login-linear" width="24" height="24"></iconify-icon> Login</a>
            @endif

            <a href="#" class="flex items-center gap-2 transition hover:text-amber-400">
                <iconify-icon icon="mage:contact-book" width="24" height="24"></iconify-icon>
                Admission

            </a>

            <span class="rounded-full bg-red-500/20 px-3 py-1 text-xs font-semibold text-red-400">

                Closed

            </span>

        </div>

    </div>

</div>
<header class="bg-gradient-to-r from-blue-950 via-blue-900 to-indigo-900 text-white">

    <div class="mx-auto max-w-7xl px-0 py-5">

        <div class="flex flex-col items-center justify-between gap-6 lg:flex-row">

            <!-- Left -->
            <div class="flex items-center gap-5">

                <img src="{{ Storage::url(site('logo')) }}" alt="School Logo"
                    class="h-24 w-24 rounded-xl border-4 border-white/20 object-cover shadow-lg">

                <div>

                    <h1 class="text-4xl font-extrabold tracking-wide">
                        {{ site('name') ? site('name') : 'EduCraft Learning Master' }}
                    </h1>

                    <div class="mt-2 flex flex-wrap gap-x-6 gap-y-1 text-blue-100">

                        <span>
                            Institute Code :
                            <strong>{{ site('code') }}</strong>
                        </span>

                        <span>
                            EIIN :
                            <strong>{{ site('gov_id') }}</strong>
                        </span>

                    </div>

                    <p class="mt-2 text-blue-200">
                        {{ site('contact_address') }}
                    </p>

                </div>

            </div>

            <!-- Right -->
            <div class="flex flex-wrap items-center justify-center gap-4 lg:justify-end">

                <!-- Clock -->
                <div x-data="clock()" x-init="start()"
                    class="rounded-xl bg-blue-600 px-6 py-4 text-center shadow-xl">

                    <div x-text="time" class="text-3xl font-bold">
                    </div>

                    <div x-text="date" class="mt-1 text-sm text-blue-100">
                    </div>

                </div>

            </div>

        </div>

    </div>

</header>

<script>
    document.addEventListener('alpine:init', () => {

        Alpine.data('clock', () => ({

            time: '',
            date: '',

            start() {

                this.update()

                setInterval(() => {

                    this.update()

                }, 1000)

            },

            update() {

                const now = new Date()

                this.time = now.toLocaleTimeString([], {
                    hour: '2-digit',
                    minute: '2-digit',
                    second: '2-digit'
                })

                this.date = now.toLocaleDateString([], {
                    weekday: 'long',
                    year: 'numeric',
                    month: 'long',
                    day: 'numeric'
                })

            }

        }))

    })
</script>

<style>
    @keyframes marquee {

        from {
            transform: translateX(100%);
        }

        to {
            transform: translateX(-100%);
        }

    }

    .marquee {

        display: inline-block;

        animation: marquee 25s linear infinite;

    }

    .marquee:hover {

        animation-play-state: paused;

    }
</style>
