<nav class="bg-teal-800 px-2 relative">
  <div class="flex justify-between items-center h-16 !px-4">
    <!-- Logo -->
    <a href="/" class="flex md:hidden text-white !text-sm font-bold text-2xl">MySite</a>

    <!-- Mobile Menu Button -->
    <button id="mobile-btn" class="md:hidden text-white !text-sm text-3xl cursor-pointer mr-2">
      <i class="ri-menu-fill"></i>
    </button>

    <!-- Desktop Menu -->
    <ul class="hidden md:flex md:items-center md:space-x-2">
        @foreach($mainMenu?->items ?? [] as $item)
            <li class="relative group  class {{$item->is_active == 0 ? 'hidden' : ''}}">
                <a href="{{ $item->attributes == 'page' ? (route('page', ['slug' => $item->url])) : $item->url }}" target="{{ $item->target ?? '_self' }}"
                class="flex items-center text-white !text-sm !px-3 !py-2 rounded hover:bg-teal-700">
                    {{ $item->title }}
                    @if($item->children->count())
                        <i class="ri-arrow-drop-down-fill ml-1"></i>
                    @endif
                </a>

                @if($item->children->count())
                    <ul class="absolute left-0 mt-4 w-44 bg-teal-600 rounded-md opacity-0 invisible group-hover:visible group-hover:opacity-100 transition-all duration-300 z-50">
                        @foreach($item->children as $child)
                            <li class="{{$child->is_active == 0 ? 'hidden' : ''}}">
                                <a href="{{ $child->attributes == 'page' ? route('page', ['slug' => $child->url]) : $child->url }}" target="{{ $child->target ?? '_self' }}"
                                class="block !px-3 !py-2 text-white !text-sm hover:bg-teal-700">
                                    {{ $child->title }}
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
  <ul id="mobile-menu" class="fixed top-0 left-0 w-64 h-full bg-teal-700 px-3 py-6 space-y-2 transform -translate-x-full transition-transform duration-300 md:hidden z-50">
    <!-- Mobile Dropdown -->
    @foreach($mainMenu?->items ?? [] as $item)
        @if($item->children->count())
            <li  class="{{$item->is_active == 0 ? 'hidden' : ''}}">
                <button class="w-full flex justify-between items-center text-white !text-sm !px-3 !py-2 rounded hover:bg-teal-600 dropdown-btn">
                    {{ $item->title }} <i class="ri-arrow-drop-down-fill ml-2"></i>
                </button>
                <ul class="mt-1 hidden dropdown-menu">
                    @foreach($item->children as $child)
                        <li class="pl-3 {{$child->is_active == 0 ? 'hidden' : ''}}">
                            <a href="{{ $child->attributes == 'page' ? route('page', ['slug' => $child->url]) : $child->url }}" target="{{ $child->target ?? '_self' }}"
                            class="block text-white !text-sm py-1 hover:bg-teal-600 rounded">
                                {{ $child->title }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </li>
        @else
            <li class="{{$item->is_active == 0 ? 'hidden' : ''}}">
                <a href="{{ $item->attributes == 'page' ? route('page', ['slug' => $item->url]) : $item->url }}" target="{{ $item->target ?? '_self' }}"
                class="text-white !text-sm !px-3 !py-2 rounded hover:bg-teal-600 block">
                {{ $item->title }}
                </a>
            </li>
        @endif
    @endforeach

  </ul>
</nav>

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
