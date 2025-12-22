<footer>
    <div class="my_footer"></div>
    <div class="w-full flex flex-col md:flex-row footer_content">
        <div class="w-full md:w-4/12">
            <div class="pl-2 md:pl-4">
                <img src="{{ site()->logo }}" alt="" class="footer_logo">
                <h4>{{ session('lang') == 'bn' ? site()->name_bn : site()->site_name }}</h4>
                <p class="mb-1"><i class="ri-map-pin-line"></i> {{ site()->post . ', ' . site()->thana?->name . ', ' . site()->district?->name }}
                </p>
                <p class="mb-1"><i class="ri-phone-fill"></i> {{ site()->contact_phone }}</p>
                <p class="mb-1"><i class="ri-mail-line"></i> {{ site()->contact_email }}</p>
            </div>
        </div>
        <div class="w-full md:w-3/12">
            <div class="footer_box text-center md:text-left">
                <h5 class="text-base md:text-lg mb-4">Importance Link</h5>
                <p class="mb-1">
                    <a class="hover:text-gray-200" target="_blank" href="http://www.moedu.gov.bd/">{{ ('ministry_of_education') }}
                    </a>
                </p>
                <p class="mb-1">
                    <a class="hover:text-gray-200" target="_blank" href="{{ board_url('din') }}">{{ ('din') }}
                    </a>
                </p>
                <p class="mb-1">
                    <a class="hover:text-gray-200" target="_blank" href="http://www.dshe.gov.bd/">{{ ('dir_seconday_higher_edu') }}
                    </a>
                </p>
            </div>
        </div>
        <div class="w-full md:w-5/12">
            <div class="flex">
                <div class="w-1/2">
                    <div class=" ">
                        <h5 class="text-base md:text-lg mb-4">Social Links</h5>
                        <p class="mb-1"><a class="hover:text-gray-200" href="{{ site()->youtube }}" target="_blank"><i class="ri-youtube-fill"></i> Youtube</a>
                        </p>
                        <p class="mb-1"><a class="hover:text-gray-200" href="{{ site()->facebook }}" target="_blank"><i class="ri-facebook-circle-fill"></i>
                                Facebook</a></p>
                        <p class="mb-1"><a class="hover:text-gray-200" href="{{ site()->instagram }}" target="_blank"><i class="ri-instagram-fill"></i>
                                Instagram</a></p>
                    </div>
                </div>
                <div class="w-1/2">
                    <div class="footer_box ">
                        <h5 class="text-base md:text-lg mb-4">Latest post</h5>
                        <p class="mb-1"><i class="ri-global-line"></i> <a class="hover:text-gray-200" href="https://abdursoft.com">abdursoft</a></p>
                        <p class="mb-1"><i class="ri-phone-fill"></i> +8801892311511</p>
                        <p class="mb-1"><i class="ri-mail-line"></i> me@abdursoft.com</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="flex flex-col items-center justify-center py-3">
        <h4 class="copyText">{{ ('copy') }} ©
            {{ date('Y') . ' ' . (session('lang') == 'bn' ? site()->name_bn : site()->site_name) }} </h4>
        <a class="hover:text-red-500 text-sm" href="https://abdursoft.com">Built with ❤️ by Abdur Rahim</a>
    </div>
</footer>
