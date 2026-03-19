<!-- default theme header -->
<div class="w-full">
    <div class="w-full">
        <div class="w-full flex items-center justify-between py-2">
            <div class="flex items-center justify-between md:justify-start gap-2 w-full md:w-1/2 pl-1">
                <p><a class="flex items-center gap-1" href="mailto:{{ site()->contact_email }}"><iconify-icon icon="fontisto:email" width="24" height="24"></iconify-icon>
                        {{ site()->contact_email }}</a></p>
                <p><a class="flex items-center gap-1" href="tel:{{ site()->contact_phone }}"><iconify-icon icon="line-md:phone-loop" width="24" height="24"></iconify-icon> {{ site()->contact_phone }}</a></p>
            </div>
            <div class="w-1/2 hidden md:flex items-center justify-end gap-3 text-sm pr-1">
                @if(auth()->check())
                    <a href="{{route('logout')}}" class="flex items-center gap-2 hover:text-red-500 transition-all delay-100"><iconify-icon icon="solar:login-linear" width="24" height="24"></iconify-icon> Logout</a>
                    <a href="{{route(auth()->user()->role.'.dashboard')}}" class="flex items-center gap-2 hover:text-red-500 transition-all delay-100"><iconify-icon icon="material-symbols:empty-dashboard-rounded" width="24" height="24"></iconify-icon></iconify-icon> Dashboard</a>
                @else
                    <a href="{{route('login')}}" class="flex items-center gap-2 hover:text-red-500 transition-all delay-100"><iconify-icon icon="solar:login-linear" width="24" height="24"></iconify-icon> Login</a>
                    <a href="{{route('register')}}" class="flex items-center gap-2 hover:text-red-500 transition-all delay-100"><iconify-icon icon="hugeicons:user-add-01" width="24" height="24"></iconify-icon> Register</a>
                @endif
                <a href="{{route('admission')}}" class="flex items-center gap-2 hover:text-red-500 transition-all delay-100"><iconify-icon icon="mage:contact-book" width="24" height="24"></iconify-icon> Admission</a>
                <p class="{{ isOpen() ? 'text-green-600 font-semibold' : 'text-red-500 text-semibold italic' }}">{{ isOpen() ? 'Open' : 'Closed' }}</p>
            </div>
        </div>
        <div class="w-full flex items-center justify-center gap-3 md:justify-between" style="background: {{site()->header_color ?? 'oklch(0.4 0.06 188.43)'}};color:{{site()->text_color ?? '#333'}}">
            <div class="mid-nav-item">
                <a href="/"><img src="{{ Storage::url(site()->logo) }}"
                        alt="{{ site()->name ?? 'eduCraft' }}"></a>
            </div>
            <div class="mid-nav-item flex flex-col items-start md:items-center">
                <h1 class="text-lg md:text-2xl lg:text-4xl font-semibold md:font-bold">{{ session('lang') == 'bn' ? site('name_bn') : site('site_name') }}</h1>
                <p class="slogan">{{ session('lang') == 'bn' ? site('slogan') : site('slogan_en') }}</p>
                <div class="collage_code">Institute Code : {{ site('code') ?? '12345' }} | EIIN Code: {{ site('gov_id') ?? '123ABC' }}
                </div>
                <div class="flex items-center justify-center gap-5">
                    <small class="text-sm">{{ site('thana')?->name. ', '. site('district')?->name. ', '. site('post')}}</small>
                </div>
            </div>
            <div class="hidden md:flex mid-nav-item pr-2 flex items-center justify-center flex-col">
                <x-clock-timer styleClass="bg-gray-600 p-5 rounded-md shadow-lg" />
                {{date('l')}}
            </div>
        </div>
        @include(theme('components.partials.nav'))
    </div>
</div>
