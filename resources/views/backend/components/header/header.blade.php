<header class="sticky top-0 z-50 flex w-full items-center justify-between bg-[#424242] px-4 py-3 shadow-md md:px-6">
    <!-- Left Section -->
    <div class="flex items-center md:space-x-3">
        <!-- Toggle Button (for small screens) -->
        <div class="flex-1 flex items-center justify-between flex-col-revers md:flex-col-wrap md:space-x-3">
            <button id="sidebarToggleButton"
                class="flex h-10 w-10 items-center justify-center rounded-md bg-gray-100 text-gray-700 hover:bg-gray-200 lg:hidden cursor-pointer">
                <iconify-icon icon="line-md:arrow-right" width="24" height="24"></iconify-icon>
            </button>
        </div>
         <!-- site logo -->
        <img src="https://abdursoft.com/assets/images/instructor.png" alt="eduMart" class="w-[60px] h-[46px]">
        <!-- site title -->
        <h1 class="hidden lg:block text-lg md:text-xl lg:text-2xl font-bold text-white">{{site()->site_name ?? 'EduMart'}}</h1>
    </div>

    <!-- Right Section -->
    <div class="flex items-center space-x-3 md:space-x-5">
        <!-- Search Icon (Mobile) -->
        <button id="search-toggle"
            class="rounded-md p-2 transition text-gray-700 hover:bg-gray-200 md:hidden cursor-pointer">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24"
                stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M21 21l-4.35-4.35M11 18a7 7 0 100-14 7 7 0 000 14z" />
            </svg>
        </button>

        <!-- homepage view -->
        <a href="/" target="_blank"><iconify-icon icon="streamline-plump:code-monitor-2-solid" class="text-white" width="24" height="24"></iconify-icon></a>

        <!-- Notifications -->
        <div class="relative">
            <button id="notify-btn" class="relative p-2 text-white transition cursor-pointer">
                <iconify-icon icon="ion:notifications" width="24" height="24"></iconify-icon>
            </button>
            <div id="notify-dropdown"
                class="hidden absolute left-0 md:right-0 mt-2 w-50 md:w-64 rounded-lg bg-white p-4 shadow-lg 800">
                <p class="text-sm text-gray-700">No new notifications</p>
            </div>
        </div>

        <!-- language -->
        <div class="relative">
            <button id="language-btn"
                class="flex items-center space-x-2 cursor-pointer p-2 text-white">
                <iconify-icon icon="ion:language" width="24" height="24"></iconify-icon> <span class="text-sm font-medium">{{ LANGUAGE[app()->getLocale()] }}</span>
            </button>
            <div id="language-dropdown"
                class="hidden absolute right-0 mt-2 w-48 rounded-lg bg-white py-2 shadow-lg 800">
                <a href="{{ route('lang', ['lang' => 'bn']) }}"
                    class="block px-4 py-2 text-sm text-gray-600  hover:bg-gray-700 hover:text-white">BN</a>
                <a href="{{ route('lang', ['lang' => 'en']) }}"
                    class="block px-4 py-2 text-sm text-gray-600  hover:bg-gray-700 hover:text-white">EN</a>
            </div>
        </div>

        <!-- Profile -->
        <div class="relative">
            <button id="profile-btn" class="flex items-center space-x-2 text-white cursor-pointer">
                <iconify-icon icon="healthicons:ui-user-profile" width="34" height="34"></iconify-icon>
            </button>
            <div id="profile-dropdown"
                class="hidden absolute right-0 mt-2 w-48 rounded-lg bg-white py-2 shadow-lg 800">
                <a href="#"
                    class="block px-4 py-2 text-sm text-gray-600  hover:bg-gray-700 hover:text-white">Profile</a>
                <a href="#"
                    class="block px-4 py-2 text-sm text-gray-600  hover:bg-gray-700 hover:text-white">Logout</a>
            </div>
        </div>
    </div>
</header>

<!-- Mobile Search -->
<div id="mobile-search"
    class="hidden w-full bg-white 900 p-3 md:hidden fixed top-[70px] left-0 transition z-[50] shadow-lg">
    <input type="text" placeholder="Search menu items..."
        class="w-full rounded-lg border border-gray-300 bg-gray-50 py-2 pl-4 pr-4 text-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 text-gray-600" />
</div>

<script>
    // Toggle dropdowns and mobile menu
    document.getElementById('notify-btn').addEventListener('click', () => {
        document.getElementById('notify-dropdown').classList.toggle('hidden');
    });

    document.getElementById('language-btn').addEventListener('click', () => {
        document.getElementById('language-dropdown').classList.toggle('hidden');
    });

    document.getElementById('profile-btn').addEventListener('click', () => {
        document.getElementById('profile-dropdown').classList.toggle('hidden');
    });

    document.getElementById('search-toggle').addEventListener('click', () => {
        document.getElementById('mobile-search').classList.toggle('hidden');
    });

    // Optional: close dropdowns when clicking outside
    document.addEventListener('click', (e) => {
        const notify = document.getElementById('notify-dropdown');
        const profile = document.getElementById('profile-dropdown');

        if (!e.target.closest('#notify-btn')) notify.classList.add('hidden');
        if (!e.target.closest('#profile-btn')) profile.classList.add('hidden');
    });
</script>

<script>
    let toggleEvent = false;
    // Sidebar toggle for mobile
    const sidebar = document.getElementById("sidebar");
    const toggleBtn = document.getElementById("sidebarToggleButton");

    toggleBtn.addEventListener("click", () => {
        toggleEvent = !toggleEvent;
        if (toggleEvent) {
            $(toggleBtn).html('<iconify-icon icon="line-md:arrow-left" width="24" height="24"></iconify-icon>');
        } else {
            $(toggleBtn).html('<iconify-icon icon="line-md:arrow-right" width="24" height="24"></iconify-icon>')
        }
    });

    // Dropdown toggle
    document.querySelectorAll("[data-toggle='dropdown']").forEach((btn) => {
        btn.addEventListener("click", () => {
            const target = document.querySelector(btn.dataset.target);
            const arrow = btn.querySelector("svg:last-child");

            if (target.classList.contains("hidden")) {
                target.classList.remove("hidden");
                arrow.classList.add("rotate-180");
            } else {
                target.classList.add("hidden");
                arrow.classList.remove("rotate-180");
            }
        });
    });
</script>
