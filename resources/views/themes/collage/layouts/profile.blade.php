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

    {{-- Vite assets --}}
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

    {{-- smart marquee css --}}
    <link rel="stylesheet" href="{{ theme_asset('css/smart-marquee.css') }}">

    @yield('styles') <!-- Loading page specific styles -->
</head>

<body class="w-full flex items-center justify-center">
    <div class="w-full min-h-screen pt-5">
        <!-- Loading the latest news marquee -->
        @include(theme('components.partials.header'))
        <div class="mx-auto max-w-7xl flex items-start flex-col lg:flex-row gap-2 justify-center lg:justify-between my-5">
            <div class="w-full lg:w-1/4">
                <!-- Loading Navbar -->
                @include(theme('components.partials.profile_header'))
                @include(theme('components.marquee.news'))
            </div>
            <div class="w-full lg:w-3/4">
                <!-- Loading page content -->
                @yield('content')
            </div>
        </div>

        <!-- Loading Footer -->
        <x-ui.footer :company="config('app.name')" :version="'v1.0.0'" />
    </div>

    @yield('scripts') <!-- Loading page specific scripts -->

    {{-- smart marquee js  --}}
    <script src="{{ theme_asset('js/script.js') }}"></script>
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
