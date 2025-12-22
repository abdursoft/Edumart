<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="text/html; charset=iso-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @yield('meta') <!-- Loading meta data here -->
    <link rel="shortcut icon" href="{{ site()->favicon ?? '' }}" type="image/x-icon"> <!-- Loading Favicon -->
    <link rel="canonical" href="{{ config('app.url') }}" /> <!-- Site base url -->
    <title>@yield('title')</title> <!-- Loading page title -->
    <script src="{{ theme_asset('js/jquery.js') }}"></script>

    {{-- Vite assets --}}
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    @yield('styles') <!-- Loading page specific styles -->
</head>

<body class="w-full flex items-center justify-center p-4 md:p-10">
    <div class="w-full max-w-[1200px]">
        <!-- Loading page content -->
        @yield('content')
    </div>

    @yield('scripts') <!-- Loading page specific scripts -->
</body>
</html>
