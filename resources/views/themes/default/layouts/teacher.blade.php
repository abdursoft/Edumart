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
    <script src="{{ theme_asset('js/clock.js') }}"></script>
    <link rel="stylesheet" href="{{ theme_asset('css/sweet.css') }}">
    <link rel="stylesheet" href="{{ theme_asset('css/owl.css') }}" />
    <link rel="stylesheet" href="{{ theme_asset('css/style.css') }}">

    {{-- load jquery UI & select2  --}}
    <link rel="stylesheet" href="{{asset('ui/jquery-ui.min.css')}}">
    <link href="{{asset('ui/select2.min.css')}}" rel="stylesheet" />
    <script src="{{asset('ui/jquery-ui.min.js')}}"></script>
    <script src="{{asset('ui/select2.min.js')}}"></script>
    <script src="{{asset('ui/sorted.min.js')}}"></script>


    {{-- Vite assets --}}
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

    {{-- smart marquee css --}}
    <link rel="stylesheet" href="{{ theme_asset('css/smart-marquee.css') }}">

    <link rel="stylesheet" href="{{asset('themes/backend/css/select2.css')}}">

    {{-- editor assets  --}}
    <link rel="stylesheet" href="{{asset('ui/editor/quil.css')}}">
    <link rel="stylesheet" href="{{asset('ui/editor/table.css')}}">
    <script src="{{asset('ui/editor/quil.js')}}"></script>
    <script src="{{asset('ui/editor/table.js')}}"></script>

    @yield('styles') <!-- Loading page specific styles -->
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
                @include(theme('components.partials.teacher_profile'))
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

    {{-- smart marquee js  --}}
    <script src="{{ theme_asset('js/smart-marquee.js') }}"></script>
    <script>
        $(document).ready(function() {
            $(".smartmarquee").smartmarquee();
        });
    </script>

</body>
</html>
