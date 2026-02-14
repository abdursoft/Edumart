<footer>
    <div class="my_footer"></div>
    <div class="w-full flex flex-col md:flex-row py-20 rounded-0 md:rounded-md mt-2" style="background:{{site()->footer_color ?? 'oklch(0.45 0.08 188.22)'}};">
        <div class="w-full md:w-4/12">
            <div class="pl-2 md:pl-4 flex items-center flex-row gap-2 md:flex-col md:items-start">
                <img src="{{ Storage::url(site()->logo) }}" alt="" class="footer_logo">
                <div>
                    <h4>{{ session('lang') == 'bn' ? site()->name_bn : site()->site_name }}</h4>
                    <p class="mb-1"><i class="ri-map-pin-line"></i> {{ site()->post . ', ' . site()->thana?->name . ', ' . site()->district?->name }}
                    </p>
                    <p class="mb-1"><i class="ri-phone-fill"></i> {{ site()->contact_phone }}</p>
                    <p class="mb-1"><i class="ri-mail-line"></i> {{ site()->contact_email }}</p>
                </div>
            </div>
        </div>
        <div class="w-full md:w-3/12 hidden md:block">
            <div class="footer_box text-center md:text-left pr-3">
                <h5 class="text-base md:text-lg md:font-bold mb-4">Importance Link</h5>
                <p class="mb-1">
                    <a class="hover:text-orange-600" target="_blank" href="http://www.moedu.gov.bd/">{{ text('ministry_of_education') }}
                    </a>
                </p>
                <p class="mb-1">
                    <a class="hover:text-orange-600" target="_blank" href="{{ board_url('din') }}">{{ text('din') }}
                    </a>
                </p>
                <p class="mb-1">
                    <a class="hover:text-orange-600" target="_blank" href="http://www.dshe.gov.bd/">{{ text('dir_seconday_higher_edu') }}
                    </a>
                </p>
            </div>
        </div>
        <div class="w-full md:w-5/12 mt-4 md:mt-0">
            <div class="flex px-2 md:px-0">
                <div class="w-1/2">
                    <div class="pl-0 md:pl-10">
                        <h5 class="text-base md:text-lg mb-4 md:font-bold">Social Links</h5>
                        @foreach(site()->social_links as $link=>$url)
                            <p class="mb-1 flex items-center gap-1"><a class="hover:text-orange-600 flex items-center gap-1" href="{{ $url }}" target="_blank">{!! icons($link) !!}
                                {{ucfirst($link)}}</a></p>
                        @endforeach
                    </div>
                </div>
                <div class="w-1/2">
                    <div class="footer_box ">
                        <h5 class="text-base md:text-lg mb-4 md:font-bold">Contact</h5>
                        <p class="mb-1 flex items-center gap-1"><iconify-icon icon="line-md:phone-loop" width="24" height="24"></iconify-icon> {{site()->contact_phone}}</p>
                        <p class="mb-1 flex items-center gap-1"><iconify-icon icon="fontisto:email" width="24" height="24"></iconify-icon> {{site()->contact_email}}</p>
                        <p class="mb-1 flex items-center gap-1"><iconify-icon icon="qlementine-icons:address-book-16" width="24" height="24"></iconify-icon> {{site()->address}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="flex flex-col items-center justify-center py-1 md:py-3 px-3">
        <h4 class="copyText">{{ text('copy') }} ©
            {{ date('Y') . ' ' . (session('lang') == 'bn' ? site()->name_bn : site()->site_name) }} </h4>
        <a class="hover:text-red-500 text-sm text-red-600" href="https://abdursoft.com" target="_blank">Developed by abdursoft</a>
    </div>
</footer>
