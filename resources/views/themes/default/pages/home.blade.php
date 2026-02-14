@extends(theme('layouts.app'))

@section('title', ($page->title ?? 'Home page'))

@section('meta')
    {{ metaContent('Home Page', 'This is the home page of the website.', theme_asset('images/home-banner.jpg'), 'home, page, website') }}
@endsection

@section('content')
@if(!empty($page->slider))
<x-hero-slider :slider="$page->slider"></x-hero-slider>
@endif

<div class="flex flex-col md:flex-row gap-4">

    <!-- Left Column -->
    <div class="md:w-1/3 2xl:w-1/5 w-full space-y-4 gap-3 shadow-md bg-white px-2">
        @include(theme('components.marquee.news'))
        @include(theme('components.marquee.notice'))
        <h1 class="mt-2 text-sm md:text-base font-semibold">Calender</h1>
        <x-calender eventRoute='/api/events' container='userCalender' ></x-calender>
    </div>

    <!-- Right Column -->
    <div class="md:w-2/3  2xl:w-4/5  w-full space-y-4">
        <!-- Dynamic page Content -->
        <div class="text-justify w-full px-2">
            <div class="prose max-w-full">
                {!! $page->content ?? '' !!}
            </div>
        </div>
    </div>
</div>

@endsection


{{-- load style and script for this page only --}}
@section('styles')
<link rel="stylesheet" href="{{ theme_asset('css/smart-marquee.css') }}">
@endsection


@push('scripts')
<script type="module">
    // vticker
    import '{{theme_asset("js/smart-marquee.js")}}';
    $(".smartmarquee").smartmarquee({
                duration: 5000,
                direction: 'down',
                duplicated: true,
                pauseOnHover: true
            });
</script>
@endpush
