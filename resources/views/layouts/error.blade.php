<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>@yield('title')</title>
    <link rel="shortcut icon" href="{{ site('favicon') ? asset(site('favicon')) : asset('images/favicon.png') }}" type="image/x-icon">

    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

    <style>
        @keyframes float {

            0%,
            100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-12px);
            }
        }

        .float {
            animation: float 4s ease-in-out infinite;
        }
    </style>

</head>

<body
    class="min-h-screen flex items-center justify-center bg-gradient-to-br from-indigo-500 via-purple-500 to-pink-500 text-white">

    <div class="text-center px-6">

        <div class="float">
            <h1 class="text-8xl font-bold animate-pulse">
                @yield('code')
            </h1>
        </div>

        <h2 class="text-3xl font-semibold mt-6">
            @yield('message')
        </h2>

        <p class="mt-3 text-lg text-white/90 max-w-md mx-auto">
            @yield('description')
        </p>

        <div class="mt-10 flex justify-center gap-4">

            <a href="{{ url('/') }}"
                class="px-6 py-3 bg-white text-indigo-600 rounded-lg shadow hover:scale-105 transition">
                Home
            </a>

            <button onclick="history.back()"
                class="px-6 py-3 bg-white/20 backdrop-blur rounded-lg hover:bg-white/30 transition">
                Go Back
            </button>

        </div>

    </div>

</body>

</html>
