<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>

    <link rel="shortcut icon" href="">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Roboto:ital,wght@0,100..900;1,100..900&family=Saira:ital,wght@0,100..900;1,100..900&family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">

    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</head>

<body class="bg-slate-100 min-h-[100vh] flex items-center justify-center w-full p-3">
    <section class="w-full md:w-3/5 min-h-[90vh] bg-white rounded-lg shadow-lg px-10 py-3 md:py-10 2xl:py-20">

        <div class="text-center w-full flex items-center justify-center">
            <img src="https://cdn.abdursoft.com/assets/ott/images/rstream.png" alt="rstream" class="w-[290px] h-[70px]">
        </div>


        <div class="min-h-[550px]">
            <div class="text-center mb-4 border-b-[1px] border-gray-300 p-2 text-slate-600">
                <h2 class="text-2xl font-bold">{{ 'eduCraft Education Platform Installation' }}</h2>
                <h6 class="text-sm md:text-base text-semibold">
                    {{ 'Please proceed step by step with proper data according to instructions' }}
                </h6>
            </div>
            @yield('content')
        </div>
        <footer class="w-full">
            <div class="flex flex-col md:flex-row items-center justify-between border-t-[1px] border-gray-300 p-2">
                <img src="https://cdn.abdursoft.com/assets/ott/images/rstream.png" alt="rstream" class="w-[110px] h-[31px]">
                <p class="copyright-text mb-0">© {{ date('Y') }} | {{ 'All Rights Reserved' }}</p>
            </div>
        </footer>
    </section>

</body>

</html>
