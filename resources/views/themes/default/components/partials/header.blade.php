<!-- default theme header -->
<div class="w-full">
    <div class="w-full">
        <div class="w-full flex items-center justify-between py-2">
            <div class="flex items-center justify-between md:justify-start gap-2 w-full md:w-1/2">
                <p><a href="mailto:{{ site()->contact_email }}"><i class="ri-mail-line"></i>
                        {{ site()->contact_email }}</a></p>
                <p><a href="tel:{{ site()->contact_phone }}"><i class="ri-phone-line"></i> {{ site()->contact_phone }}</a></p>
            </div>
            <div class="w-1/2 hidden md:flex items-center justify-end gap-3 text-sm">
                <a href="/invoice" class="flex items-center gap-2 hover:text-red-500 transition-all delay-100"><iconify-icon icon="solar:login-linear" width="24" height="24"></iconify-icon> Admin Login</a>
                <a href="/invoice" class="flex items-center gap-2 hover:text-red-500 transition-all delay-100"><iconify-icon icon="hugeicons:user-add-01" width="24" height="24"></iconify-icon> Register</a>
                <a href="/invoice" class="flex items-center gap-2 hover:text-red-500 transition-all delay-100"><iconify-icon icon="mage:contact-book" width="24" height="24"></iconify-icon> Contact</a>
                <a href="/invoice" class="flex items-center gap-2 hover:text-red-500 transition-all delay-100"><iconify-icon icon="fluent-emoji-high-contrast:e-mail" width="24" height="24"></iconify-icon> Webmail</a>
            </div>
        </div>
        <div class="w-full flex items-center justify-between bg-teal-900">
            <div class="mid-nav-item">
                <a href="/"><img src="{{ Storage::url(site()->logo) }}"
                        alt="{{ site()->name ?? 'eduCraft' }}"></a>
            </div>
            <div class="mid-nav-item text-gray-200">
                <h1 class="text-xl md:text-4xl font-semibold md:font-bold text-white">{{ session('lang') == 'bn' ? site()->name_bn : site()->site_name }}</h1>
                <p class="slogan">{{ session('lang') == 'bn' ? site()->slogan : site()->slogan_en }}</p>
                <div class="collage_code">Institute Code : {{ site()->code }} | EIIN Code: {{ site()->gov_id }}
                </div>
                <div class="flex items-center justify-center gap-5">
                    <small class="text-sm text-gray-200">{{ site()->thana->name. ', '. site()->district->name. ', '. site()->post}}</small>
                </div>
            </div>
            <div class="mid-nav-item">
                <img src="{{ site()->side_logo }}" alt="{{ site()->name ?? 'eduCraft' }}" class="highlight">
            </div>
        </div>
        {{-- @include(theme('components.partials.navbar')) --}}
        @include(theme('components.partials.nav'))
    </div>
</div>
