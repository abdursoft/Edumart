<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>@yield('title')</title>

        <meta name="description" content="{{ $description ?? '' }}">
        <meta name="keywords" content="{{ $keywords ?? '' }}">
        <meta name="author" content="{{ $author ?? '' }}">
        {{-- Vite assets --}}
        @vite(['resources/css/app.css', 'resources/js/app.js'])

        {{-- theme assets  --}}
        <link rel="stylesheet" href="{{ theme_asset('css/style.css') }}">

        <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

        {{-- smart marquee css --}}
        <link rel="stylesheet" href="{{ theme_asset('css/smart-marquee.css') }}">

        @yield('styles') <!-- Loading page specific styles -->
        @stack('styles') <!-- Loading page specific styles -->

        {{-- Vite CSS --}}
        {{-- {{ module_vite('build-guardian', 'resources/assets/sass/app.scss') }} --}}
    </head>

    <body class="w-full flex items-center justify-center">
    <x-flash-message />
    <div class="w-full max-w-[1900px] min-h-screen pt-1">
        <!-- Loading the latest news marquee -->
        <div class="flex items-center justify-between">
            <div class="flex-1 w-full">@include(theme('components.marquee.latest'))</div>
            <x-clock-timer />
        </div>
        <div class="flex items-start flex-col lg:flex-row gap-2 justify-center lg:justify-between my-5">
            <div class="w-full lg:w-1/4 pt-5">
                <!-- Loading Navbar -->
                @include('guardian::components.profile', ['profile' => $profile])
                @include(theme('components.marquee.news'))
            </div>
            <div class="w-full lg:w-3/4">
                <!-- Loading page content -->
                @yield('content')
            </div>
        </div>

        <!-- Loading Footer -->
        @include(theme('components.partials.footer'))
    </div>

    @yield('scripts') <!-- Loading page specific scripts -->
    @stack('scripts')
    {{-- smart marquee js  --}}
    <script type="module">
        import '{{theme_asset("js/smart-marquee.js")}}';
        $(".smartmarquee").smartmarquee({
                    duration: 5000,
                    direction: 'down',
                    duplicated: true,
                    pauseOnHover: true
                });
    </script>
    <!-- flash message  -->
    {!! Toastr::message() !!}
</body>
</html>
</html>
