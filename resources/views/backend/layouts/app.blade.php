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

    {{-- Vite assets --}}
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    {{-- custom override js and css  --}}
    <link href="{{asset('ui/admin.css')}}" rel="stylesheet">

    {{-- editor assets  --}}
    <link rel="stylesheet" href="{{asset('ui/editor/table.css')}}">

    {{tableStyle()}}

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
        <main class="lg:pl-[250px]">
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
    <script src="{{asset('ui/admin.js')}}"></script>
    <!-- Push Scripts -->
    @stack('scripts')
    
    <!-- flash message  -->
    {!! Toastr::message() !!}
  </body>
</html>
