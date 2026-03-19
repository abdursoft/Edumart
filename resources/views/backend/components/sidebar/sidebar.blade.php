<aside id="sidebar"
    class="sidebar fixed left-0 top-0 z-50 flex h-screen w-[250px] text-sm md:text-base flex-col overflow-y-hidden border-r border-gray-200 transform transition-transform duration-300 ease-linear -translate-x-full lg:translate-x-0 bg-[#424242] shadow-md">

    <!-- SIDEBAR MENU -->
    <div class="flex flex-col overflow-y-auto no-scrollbar pt-22 text-white">
        <nav>
            <ul class="flex flex-col gap-4 mb-6">

                @foreach (MENUS as $key => $menu)
                    @if (is_array($menu))
                        <!-- Dropdown Menu -->
                        <li>
                            <button
                                class="dropdown-btn w-full flex items-center justify-between py-3 px-3 transition-all cursor-pointer hover:bg-[#070707] hover:border-l-4 hover:border-green-300 @if(request()->routeIs("admin.{$key}.*")) bg-[#070707] border-l-4 border-green-300 text-[#A77120] @endif"
                                data-target="dropdown-{{ $key }}">
                                <span class="capitalize flex items-center gap-2">
                                    {!! icons($key) !!}
                                    {{ __(strtoupper(app()->getLocale()) . '.' . $key) }}
                                </span>
                                <svg class="w-4 h-4 transition-transform @if(request()->routeIs('admin.'.$key.'*')) rotate-180 @endif" fill="none" stroke="currentColor"
                                    stroke-width="2" viewBox="0 0 24 24">
                                    <path d="M6 9l6 6 6-6" />
                                </svg>
                            </button>

                            <ul id="dropdown-{{ $key }}"
                                class="dropdown flex-col gap-2 pt-1 text-sm transition-all bg-[#282828] @if(!request()->routeIs('admin.'.$key.'*')) hidden @endif">
                                @foreach ($menu as $subKey => $subMenu)
                                    @if (is_array($subMenu))
                                        <!-- Sub Dropdown -->
                                        <li>
                                            <button
                                                class="sub-dropdown-btn w-full flex items-center justify-between py-1 px-2 cursor-pointer hover:text-[#A77120] transition-all @if(request()->routeIs("admin.{$key}.{$subKey}.*")) bg-[#070707] border-l-4 border-green-300 text-[#A77120] @endif"
                                                data-target="sub-{{ $key }}-{{ $subKey }}">
                                                {{ __(strtoupper(app()->getLocale()) . '.' . $subKey) }}
                                                <svg class="w-3 h-3 transition-transform @if(request()->routeIs('admin.'.$key.'.'.$subKey.'.*')) rotate-180 @endif" fill="none"
                                                    stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                                                    <path d="M6 9l6 6 6-6" />
                                                </svg>
                                            </button>
                                            <ul id="sub-{{ $key }}-{{ $subKey }}"
                                                class="sub-dropdown pt-1 space-y-1 @if(!request()->routeIs('admin.'.$key.'.'.$subKey.'*')) hidden @endif">
                                                @foreach ($subMenu as $itemKey => $itemValue)
                                                    <li>
                                                        <a href="{{ route("admin.{$key}.{$subKey}.{$itemKey}") }}"
                                                            class="block py-1 px-2 hover:text-[#A77120] flex items-center gap-1 transition-all @if(request()->routeIs("admin.{$key}.{$subKey}.{$itemKey}*")) text-[#A77120] @endif">
                                                            {!! icons('right_arrow') !!} {{ __(strtoupper(app()->getLocale()) . '.' . $itemKey) }}
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </li>
                                    @else
                                        <!-- Single Submenu -->
                                        <li>
                                            <a href="{{ route("admin.{$key}.{$subKey}") }}"
                                                class="block py-1 px-2 rounded-md hover:text-[#A77120]  transition-all flex items-center gap-1 @if(request()->routeIs("admin.{$key}.{$subKey}")) text-[#A77120] @endif">
                                                {!! icons('right_arrow') !!} {{ __(strtoupper(app()->getLocale()) . '.' . $subKey) }}
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
                                class="flex items-center gap-2 py-2 px-3 transition-all flex items-center gap-1 hover:bg-[#070707] hover:border-l-4 hover:border-green-300 @if(request()->routeIs('admin.'.$key)) bg-[#070707] border-l-4 border-green-300 text-[#A77120] @endif">
                                {!! icons($key) !!} {{ __(strtoupper(app()->getLocale()) . '.' . $key) }}
                            </a>
                        </li>
                    @endif
                @endforeach
            </ul>
        </nav>
    </div>

    {{-- copyright  --}}
    <div class="mt-auto mb-6 text-center text-xs text-gray-100">
        abdursoft &copy; {{ date('Y') }} EduCraft.
    </div>

</aside>

@push('scripts')
<!-- Sidebar JS -->
<script>
    document.addEventListener('DOMContentLoaded', () => {

        // Top-level dropdowns
        document.querySelectorAll('.dropdown-btn').forEach(button => {
            button.addEventListener('click', () => {
                const target = document.getElementById(button.dataset.target);
                const arrow = button.querySelector('svg');
                target.classList.toggle('hidden');
                arrow.classList.toggle('rotate-180');
            });
        });

        // Sub-dropdowns
        document.querySelectorAll('.sub-dropdown-btn').forEach(button => {
            button.addEventListener('click', () => {
                const target = document.getElementById(button.dataset.target);
                const arrow = button.querySelector('svg');
                target.classList.toggle('hidden');
                arrow.classList.toggle('rotate-180');
            });
        });

        // Mobile sidebar toggle
        toggleBtn?.addEventListener('click', (e) => {
            e.stopPropagation(); // prevent document click
            sidebar.classList.toggle('-translate-x-full');
        });

        // 🔥 CLICK OUTSIDE TO CLOSE (mobile only)
        document.addEventListener('click', (e) => {
            const isMobile = window.innerWidth < 1024; // lg breakpoint
            if (!isMobile) return;

            const clickedOutsideSidebar =
                !sidebar.contains(e.target) &&
                !toggleBtn?.contains(e.target);

            if (clickedOutsideSidebar) {
                sidebar.classList.add('-translate-x-full');
                toggleEvent = false;
                $(toggleBtn).html('<iconify-icon icon="line-md:arrow-right" width="24" height="24"></iconify-icon>');
            }
        });
    });
</script>
@endpush
