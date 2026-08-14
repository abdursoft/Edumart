<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>
        @yield('title')
    </title>

    {{-- Vite assets --}}
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    {{-- editor assets  --}}
    <link rel="stylesheet" href="{{ asset('ui/editor/table.css') }}">

    {{-- loading table style  --}}
    {{ tableStyle() }}

    {{-- custom override js and css  --}}
    <link href="{{ asset('ui/admin.css') }}" rel="stylesheet">

    {{-- load custom css  --}}
    @yield('styles')
</head>

<body class="w-full h-screen bg-slate-200 overflow-hidden scroll-smooth">
    <!-- ===== Load Flash Message === -->
    @include('components.flash-message')

    <!-- ===== Preloader Start ===== -->
    @include('backend.components.loader.preloader')
    <!-- ===== Preloader End ===== -->

    <!-- ===== Sidebar Start ===== -->
    @include('backend.components.sidebar.sidebar')
    <!-- ===== Sidebar End ===== -->

    <!-- ===== Page Wrapper Start ===== -->
    <div class="flex h-screen overflow-hidden">

        <!-- ===== Content Area Start ===== -->
        <div class="relative flex flex-col flex-1 overflow-x-hidden overflow-y-auto">

            <!-- ===== Header Start ===== -->
            @include('backend.components.header.header')
            <!-- ===== Header End ===== -->

            <!-- ===== Main Content Start ===== -->
            <main class="lg:pl-[250px] min-h-screen relative h-auto">
                <div class="p-4 mx-auto md:p-6 w-full">
                    @yield('content')
                </div>
            </main>
            <!-- ===== Main Content End ===== -->
        </div>
        <!-- ===== Content Area End ===== -->
    </div>
    <!-- ===== Page Wrapper End ===== -->

    {{-- <script src="{{asset('ui/editor/quil.js')}}"></script> --}}
    {{-- <script src="{{asset('ui/editor/table.js')}}"></script> --}}

    {{-- load iconify icons  --}}
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    {{-- custom override js and css  --}}
    <script src="{{ asset('ui/admin.js') }}"></script>
    <!-- Push Scripts -->
    @stack('scripts')

    <!-- flash message  -->
    {!! Toastr::message() !!}
</body>

</html>
