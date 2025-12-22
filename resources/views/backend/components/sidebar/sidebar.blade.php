<aside id="sidebar"
    class="sidebar fixed left-0 top-0 z-50 flex h-screen w-[290px] flex-col overflow-y-hidden border-r border-gray-200 px-5 transform transition-transform duration-300 ease-linear -translate-x-full lg:translate-x-0 bg-white shadow-md">

    <!-- SIDEBAR MENU -->
    <div class="flex flex-col overflow-y-auto no-scrollbar pt-22">
        <nav>
            <ul class="flex flex-col gap-4 mb-6">

                @foreach (MENUS as $key => $menu)
                    @if (is_array($menu))
                        <!-- Dropdown Menu -->
                        <li>
                            <button
                                class="dropdown-btn w-full flex items-center justify-between py-2 px-3 rounded-md text-gray-800 transition cursor-pointer hover:bg-gray-100"
                                data-target="dropdown-{{ $key }}">
                                <span class="capitalize flex items-center gap-2">
                                    {{ __(strtoupper(app()->getLocale()) . '.' . $key) }}
                                </span>
                                <svg class="w-4 h-4 transition-transform" fill="none" stroke="currentColor"
                                    stroke-width="2" viewBox="0 0 24 24">
                                    <path d="M6 9l6 6 6-6" />
                                </svg>
                            </button>

                            <ul id="dropdown-{{ $key }}"
                                class="dropdown flex-col gap-1 mt-2 ml-4 text-sm transition-all bg-gray-100 hidden">
                                @foreach ($menu as $subKey => $subMenu)
                                    @if (is_array($subMenu))
                                        <!-- Sub Dropdown -->
                                        <li>
                                            <button
                                                class="sub-dropdown-btn w-full flex items-center justify-between py-1 px-2 text-gray-900 hover:bg-gray-700 hover:text-white rounded-md transition"
                                                data-target="sub-{{ $key }}-{{ $subKey }}">
                                                {{ __(strtoupper(app()->getLocale()) . '.' . $subKey) }}
                                                <svg class="w-3 h-3 transition-transform" fill="none"
                                                    stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                                                    <path d="M6 9l6 6 6-6" />
                                                </svg>
                                            </button>
                                            <ul id="sub-{{ $key }}-{{ $subKey }}"
                                                class="sub-dropdown hidden ml-4 mt-1 space-y-1 bg-white">
                                                @foreach ($subMenu as $itemKey => $itemValue)
                                                    <li>
                                                        <a href="{{ route("admin.{$key}.{$subKey}.{$itemKey}") }}"
                                                            class="block py-1 px-2 text-gray-700 hover:bg-gray-700 hover:text-white rounded-md transition">
                                                            {{ __(strtoupper(app()->getLocale()) . '.' . $itemKey) }}
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </li>
                                    @else
                                        <!-- Single Submenu -->
                                        <li>
                                            <a href="{{ route("admin.{$key}.{$subKey}") }}"
                                                class="block py-1 px-2 text-gray-700 hover:bg-gray-700 hover:text-white rounded-md transition">
                                                {{ __(strtoupper(app()->getLocale()) . '.' . $subKey) }}
                                            </a>
                                        </li>
                                    @endif
                                @endforeach
                            </ul>
                        </li>
                    @else
                        <!-- Single Menu -->
                        <li>
                            <a href="{{ route('admin.'.$key) }}"
                                class="flex items-center gap-2 py-2 px-3 rounded-md text-gray-700 hover:bg-gray-100 transition">
                                {{ __(strtoupper(app()->getLocale()) . '.' . $key) }}
                            </a>
                        </li>
                    @endif
                @endforeach
            </ul>
        </nav>
    </div>

    {{-- copyright  --}}
    <div class="mt-auto mb-6 text-center text-xs text-gray-500">
        abdursoft &copy; {{ date('Y') }} EduMart. All rights reserved.
    </div>

</aside>

<!-- Sidebar JS -->
<script>
    document.addEventListener('DOMContentLoaded', () => {
        // Top-level dropdowns
        document.querySelectorAll('.dropdown-btn').forEach(button => {
            button.addEventListener('click', () => {
                const target = document.getElementById(button.dataset.target);
                const arrow = button.querySelector('svg');

                // Toggle visibility
                target.classList.toggle('hidden');
                arrow.classList.toggle('rotate-180');
            });
        });

        // Sub-dropdowns (nested)
        document.querySelectorAll('.sub-dropdown-btn').forEach(button => {
            button.addEventListener('click', () => {
                const target = document.getElementById(button.dataset.target);
                const arrow = button.querySelector('svg');

                target.classList.toggle('hidden');
                arrow.classList.toggle('rotate-180');
            });
        });

        // Mobile sidebar toggle
        document.getElementById('toggleSidebar')?.addEventListener('click', () => {
            document.getElementById('sidebar').classList.toggle('-translate-x-full');
        });
    });
</script>
