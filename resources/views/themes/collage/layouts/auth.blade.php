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

    {{-- Vite assets --}}
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

    {{-- theme css style  --}}
    <link rel="stylesheet" href="{{theme_asset('css/style.css')}}">

    @yield('styles') <!-- Loading page specific styles -->
</head>

<body class="w-full flex items-center justify-center">
    <div class="relative w-full min-h-screen overflow-hidden bg-[#06141f]">

        <!-- Main gradient -->
        <div
            class="absolute inset-0 bg-gradient-to-br
        from-[#071a2a]
        via-[#062b38]
        to-[#031b20]">
        </div>

        <!-- Blue light -->
        <div
            class="absolute top-[-15%] left-[-10%]
        h-[500px] w-[500px]
        rounded-full
        bg-blue-500/20
        blur-[120px]">
        </div>

        <!-- Teal light -->
        <div
            class="absolute bottom-[-15%] right-[-10%]
        h-[500px] w-[500px]
        rounded-full
        bg-teal-400/20
        blur-[120px]">
        </div>

        <!-- Center glow -->
        <div
            class="absolute top-1/2 left-1/2
        h-[400px] w-[400px]
        -translate-x-1/2
        -translate-y-1/2
        rounded-full
        bg-cyan-500/10
        blur-[100px]">
        </div>

        <!-- Subtle grid -->
        <div
            class="absolute inset-0 opacity-[0.04]
        bg-[linear-gradient(rgba(255,255,255,0.8)_1px,transparent_1px),linear-gradient(90deg,rgba(255,255,255,0.8)_1px,transparent_1px)]
        bg-[size:40px_40px]">
        </div>

        <!-- Content -->
        <div class="relative z-10 flex  items-center justify-center px-4">
            <div class="w-full max-w-md">

                <div
                    class="w-full flex items-center justify-center flex-col">
                    <!-- Auth form -->
                    <!-- Loading page content -->
                    @yield('content')
                </div>

            </div>
        </div>

    </div>
    @stack('scripts')
    <!-- flash message  -->
    {!! Toastr::message() !!}
</body>

</html>
