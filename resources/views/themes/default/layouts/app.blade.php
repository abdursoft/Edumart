<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @yield('meta') <!-- Loading meta data here -->
    <link rel="shortcut icon" href="{{ Storage::url(site()->favicon) ?? '' }}" type="image/x-icon">
    <!-- Loading Favicon -->
    <link rel="canonical" href="{{ config('app.url') }}" /> <!-- Site base url -->
    <title>@yield('title')</title> <!-- Loading page title -->

    <link rel="stylesheet" href="{{ theme_asset('css/style.css') }}">

    {{-- Vite assets --}}
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

    @yield('styles') <!-- Loading page specific styles -->
    @stack('styles') <!-- Loading page specific styles -->
</head>

<body class="w-full flex items-center justify-center scroll-smooth">
    <div class="w-full mx-auto">
        <!-- Loading Navbar -->
        @include(theme('components.partials.header'))





        





        <!-- Loading page content -->
        <div class="w-full  px-2 md:px-0">
            @yield('content')
        </div>

        <!-- Loading Footer -->
        {{-- @include(theme('components.partials.footer')) --}}
        <x-ui.footer :company="config('app.name')" :version="'v1.0.0'" />
    </div>

    <script src="{{ theme_asset('js/wav.js') }}"></script>
    @yield('scripts') <!-- Loading page specific scripts -->
    @stack('scripts') <!-- Loading page specific scripts -->
    <!-- flash message  -->
    {!! Toastr::message() !!}
</body>

</html>
