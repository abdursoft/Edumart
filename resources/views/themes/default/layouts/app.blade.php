<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @yield('meta') <!-- Loading meta data here -->
    <link rel="shortcut icon" href="{{ Storage::url(site()->favicon) ?? '' }}" type="image/x-icon"> <!-- Loading Favicon -->
    <link rel="canonical" href="{{ config('app.url') }}" /> <!-- Site base url -->
    <title>@yield('title')</title> <!-- Loading page title -->
    <script src="{{ theme_asset('js/jquery.js') }}"></script>
    <script src="{{ theme_asset('js/sweet.js') }}"></script>
    <link rel="stylesheet" href="{{ theme_asset('css/sweet.css') }}">
    <link rel="stylesheet" href="{{ theme_asset('css/owl.css') }}" />
    <link rel="stylesheet" href="{{ theme_asset('css/style.css') }}">

    {{-- loading remix icon  --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.min.css" integrity="sha512-/VYneElp5u4puMaIp/4ibGxlTd2MV3kuUIroR3NSQjS2h9XKQNebRQiyyoQKeiGE9mRdjSCIZf9pb7AVJ8DhCg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    {{-- Vite assets --}}
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

    @yield('styles') <!-- Loading page specific styles -->
</head>

<body class="w-full flex items-center justify-center">
    <div class="w-full max-w-[1900px]">
        <!-- Loading Navbar -->
        @include(theme('components.partials.header'))

        <!-- Loading the latest news marquee -->
        @include(theme('components.marquee.latest'))

        <!-- Loading page content -->
        @yield('content')

        <!-- Loading Footer -->
        @include(theme('components.partials.footer'))
    </div>

    <script src="{{ theme_asset('js/owl.js') }}"></script>
    <script src="{{ theme_asset('js/wav.js') }}"></script>
    @yield('scripts') <!-- Loading page specific scripts -->
    <script>
        $(document).ready(function() {
            $(".smartmarquee").smartmarquee();
        });
    </script>
</body>
</html>
