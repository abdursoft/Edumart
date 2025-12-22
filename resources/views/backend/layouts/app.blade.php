<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
    />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <meta name="csrf-token" content="{{csrf_token()}}" />
    <title>
      @yield('title')
    </title>

    {{-- jquery and sweet assets  --}}
    <script src="{{ theme_asset('js/jquery.js') }}"></script>
    <script src="{{ theme_asset('js/sweet.js') }}"></script>
    <link rel="stylesheet" href="{{ theme_asset('css/sweet.css') }}">

    {{-- load jquery UI & select2  --}}
    <link rel="stylesheet" href="{{asset('ui/jquery-ui.min.css')}}">
    <link href="{{asset('ui/select2.min.css')}}" rel="stylesheet" />
    <script src="{{asset('ui/jquery-ui.min.js')}}"></script>
    <script src="{{asset('ui/select2.min.js')}}"></script>
    <script src="{{asset('ui/sorted.min.js')}}"></script>

    {{-- Vite assets --}}
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    {{-- custom override js and css  --}}
    <script src="{{asset('ui/admin.js')}}"></script>
    <link href="{{asset('ui/admin.css')}}" rel="stylesheet">

    {{-- load customized css  --}}
    <link rel="stylesheet" href="{{asset('themes/backend/css/select2.css')}}">

    {{-- editor assets  --}}
    <link rel="stylesheet" href="{{asset('ui/editor/quil.css')}}">
    <link rel="stylesheet" href="{{asset('ui/editor/table.css')}}">
    <script src="{{asset('ui/editor/quil.js')}}"></script>
    <script src="{{asset('ui/editor/table.js')}}"></script>

    {{-- load iconify icons  --}}
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

    {{-- load custom css  --}}
    @yield('styles')
  </head>
  <body>
    <!-- ===== Load Flash Message === -->
    @include('components.flash-message')

    <!-- ===== Preloader Start ===== -->
    @include('backend.components.loader.preloader')
    <!-- ===== Preloader End ===== -->

    <!-- ===== Page Wrapper Start ===== -->
    <div class="flex h-screen overflow-hidden">
      <!-- ===== Sidebar Start ===== -->
      @include('backend.components.sidebar.sidebar')
      <!-- ===== Sidebar End ===== -->

      <!-- ===== Content Area Start ===== -->
      <div
        class="relative flex flex-col flex-1 overflow-x-hidden overflow-y-auto"
      >

        <!-- ===== Header Start ===== -->
        @include('backend.components.header.header')
        <!-- ===== Header End ===== -->

        <!-- ===== Main Content Start ===== -->
        <main class="lg:pl-[290px]">
          <div class="p-4 mx-auto md:p-6 w-full">
            @yield('content')
          </div>
        </main>
        <!-- ===== Main Content End ===== -->
      </div>
      <!-- ===== Content Area End ===== -->
    </div>
    <!-- ===== Page Wrapper End ===== -->

    {{-- load custom js  --}}
    @yield('scripts')
  </body>
</html>
