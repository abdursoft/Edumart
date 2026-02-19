<nav class="px-2 relative" style="background:{{ site()->navbar_color ?? 'oklch(0.45 0.08 188.22)' }};">
    <div class="flex justify-between items-center h-16 !px-4">
        <!-- Logo -->
        <a href="/" class="flex md:hidden text-white !text-sm font-bold text-2xl"></a>

        <!-- Mobile Menu Button -->
        <button id="mobile-btn" class="md:hidden text-black !text-sm text-3xl cursor-pointer mr-2">
            <iconify-icon icon="line-md:close-to-menu-transition" width="24" height="24"></iconify-icon>
        </button>

        <!-- Desktop Menu -->
        <ul class="hidden md:flex md:items-center md:space-x-2">
            @foreach (menu()->items as $item)
                <li class="relative group  class @if ($item->is_active == '0') hidden @endif">
                    <a href="{{ $item->attributes == 'page' ? route('page', ['slug' => $item->url]) : $item->url }}"
                        target="{{ $item->target ?? '_self' }}"
                        class="flex items-center text-white !text-sm !px-3 !py-2 rounded hover:bg-gray-500">
                        {{ $item->title }}
                        @if ($item->children->count())
                            <iconify-icon icon="cuida:caret-down-outline" width="14" height="14"></iconify-icon>
                        @endif
                    </a>

                    @if ($item->children->count())
                        <ul
                            class="absolute left-0 mt-4 w-44 bg-gray-600 rounded-md opacity-0 invisible group-hover:visible group-hover:opacity-100 transition-all duration-300 z-50">
                            @foreach ($item->children as $child)
                                <li class="{{ $child->is_active == 0 ? 'hidden' : '' }}">
                                    <a href="{{ $child->attributes == 'page' ? route('page', ['slug' => $child->url]) : $child->url }}"
                                        target="{{ $child->target ?? '_self' }}"
                                        class="block !px-3 !py-2 text-white !text-sm hover:bg-gray-700">
                                        {{ $child->title }}
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    @endif
                </li>
            @endforeach
            @foreach (administrative() ?? [] as $key => $item)
                <li class="relative group  class">
                    <a href="@if (is_array($item)) {{ $key }} @else {{ route($key) }} @endif"
                        class="flex items-center text-white !text-sm !px-3 !py-2 rounded hover:bg-gray-500">
                        {{ is_array($item) ? $item['title'] : $item }}
                        @if (is_array($item))
                            <iconify-icon icon="cuida:caret-down-outline" width="14" height="14"></iconify-icon>
                        @endif
                    </a>

                    @if (is_array($item))
                        <ul
                            class="absolute left-0 mt-4 w-44 bg-gray-600 rounded-md opacity-0 invisible group-hover:visible group-hover:opacity-100 transition-all duration-300 z-50">
                            @foreach ($item['children'] as $chKey => $child)
                                <li>
                                    <a href="{{ route("$key", [$item['parameter'] => $chKey]) }}"
                                        class="block !px-3 !py-2 text-white !text-sm hover:bg-gray-700">
                                        {{ $child }}
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    @endif
                </li>
            @endforeach
            @foreach (FRONT_MENU as $key => $item)
                <li class="relative group  class">
                    <a href="@if (is_array($item)) {{ $key }} @else {{ route($key) }} @endif"
                        class="flex items-center text-white !text-sm !px-3 !py-2 rounded hover:bg-gray-500">
                        {{ is_array($item) ? $item['title'] : $item }}
                        @if (is_array($item))
                            <iconify-icon icon="cuida:caret-down-outline" width="14" height="14"></iconify-icon>
                        @endif
                    </a>

                    @if (is_array($item))
                        <ul
                            class="absolute left-0 mt-4 w-44 bg-gray-600 rounded-md opacity-0 invisible group-hover:visible group-hover:opacity-100 transition-all duration-300 z-50">
                            @foreach ($item['children'] as $chKey => $child)
                                <li>
                                    <a href="{{ route("$key", [$item['parameter'] => $chKey]) }}"
                                        class="block !px-3 !py-2 text-white !text-sm hover:bg-gray-700">
                                        {{ $child }}
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    @endif
                </li>
            @endforeach
        </ul>

    </div>

    <!-- Mobile Menu -->
    <ul id="mobile-menu"
        class="fixed top-0 left-0 w-64 h-full px-3 py-6 space-y-2 transform -translate-x-full transition-transform duration-300 md:hidden z-50"
        style="background:{{ site()->sidebar_color ?? 'teal' }}">
        <!-- Mobile Dropdown -->
        @foreach (menu()->items as $item)
            @if ($item->children->count())
                <li class="{{ $item->is_active == 0 ? 'hidden' : '' }}">
                    <button
                        class="w-full flex justify-between items-center text-white !text-sm !px-3 !py-2 rounded hover:bg-teal-600 dropdown-btn">
                        {{ $item->title }} <iconify-icon icon="cuida:caret-down-outline" width="14"
                            height="14"></iconify-icon>
                    </button>
                    <ul class="mt-1 hidden dropdown-menu pl-3">
                        @foreach ($item->children as $child)
                            <li class="pl-3 {{ $child->is_active == 0 ? 'hidden' : '' }}">
                                <a href="{{ $child->attributes == 'page' ? route('page', ['slug' => $child->url]) : $child->url }}"
                                    target="{{ $child->target ?? '_self' }}"
                                    class="block text-white !text-sm py-1 hover:bg-teal-600 rounded">
                                    {{ $child->title }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </li>
            @else
                <li class="{{ $item->is_active == 0 ? 'hidden' : '' }}">
                    <a href="{{ $item->attributes == 'page' ? route('page', ['slug' => $item->url]) : $item->url }}"
                        target="{{ $item->target ?? '_self' }}"
                        class="text-white !text-sm !px-3 !py-2 rounded hover:bg-teal-600 block">
                        {{ $item->title }}
                    </a>
                </li>
            @endif
        @endforeach

        @foreach (administrative() ?? [] as $key => $item)
            <li class="relative group  class">
                @if (is_array($item))
                    <button
                        class="w-full flex justify-between items-center text-white !text-sm !px-3 !py-2 rounded hover:bg-teal-600 dropdown-btn">
                        {{ is_array($item) ? $item['title'] : $item }} <iconify-icon icon="cuida:caret-down-outline"
                            width="14" height="14"></iconify-icon>
                    </button>

                    <ul class="mt-1 hidden dropdown-menu pl-3">
                        @foreach ($item['children'] as $chKey => $child)
                            <li>
                                <a href="{{ route("$key", [$item['parameter'] => $chKey]) }}"
                                    class="block !px-3 !py-2 text-white !text-sm hover:bg-gray-700">
                                    {{ $child }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                @else
                    <a href="@if (is_array($item)) {{ $key }} @else {{ route($key) }} @endif"
                        class="text-white !text-sm !px-3 !py-2 rounded hover:bg-teal-600 block">
                        {{ is_array($item) ? $item['title'] : $item }}
                    </a>
                @endif
            </li>
        @endforeach

        @foreach (FRONT_MENU as $key => $item)
            <li>
                @if (is_array($item))
                    <button
                        class="w-full flex justify-between items-center text-white !text-sm !px-3 !py-2 rounded hover:bg-teal-600 dropdown-btn">
                        {{ is_array($item) ? $item['title'] : $item }} <iconify-icon icon="cuida:caret-down-outline"
                            width="14" height="14"></iconify-icon>
                    </button>

                    <ul class="mt-1 hidden dropdown-menu pl-3">
                        @foreach ($item['children'] as $chKey => $child)
                            <li>
                                <a href="{{ route("$key", [$item['parameter'] => $chKey]) }}"
                                    class="block !px-3 !py-2 text-white !text-sm hover:bg-gray-700">
                                    {{ $child }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                @else
                    <a href="@if (is_array($item)) {{ $key }} @else {{ route($key) }} @endif"
                        class="text-white !text-sm !px-3 !py-2 rounded hover:bg-teal-600 block">
                        {{ is_array($item) ? $item['title'] : $item }}
                    </a>
                @endif
            </li>
        @endforeach

    </ul>
</nav>

@push('scripts')
    <script>
        // Mobile toggle
        const btn = document.getElementById('mobile-btn');
        const menu = document.getElementById('mobile-menu');

        btn.addEventListener('click', () => {
            menu.classList.toggle('-translate-x-full');
        });

        // Mobile dropdown toggle
        document.querySelectorAll('.dropdown-btn').forEach(button => {
            button.addEventListener('click', () => {
                const dropdown = button.nextElementSibling;
                dropdown.classList.toggle('hidden');
            });
        });
    </script>
@endpush
