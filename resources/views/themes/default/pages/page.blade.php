@extends('themes.default.layouts.app')

@section('title', $page->title)

@section('meta')
    {{ metaContent($page?->meta_title, $page?->meta_description, theme_asset('images/home-banner.jpg'), 'home, page, website') }}
@endsection


@section('content')
@if(!empty($page->slider))
<x-hero-slider :slider="$page->slider"></x-hero-slider>
@endif

<div class="flex flex-col md:flex-row gap-4">
    <!-- Left Column -->
    <div class="md:w-1/3 2xl:w-1/5 w-full space-y-4 shadow-md bg-white">
        @include(theme('components.marquee.news'))
        @include(theme('components.marquee.notice'))
        <h1 class="mt-2 text-sm md:text-base font-semibold">Calender</h1>
        <x-calender eventRoute='/api/events' container='userCalender' ></x-calender>
    </div>

    <!-- Right Column -->
    <div class="md:w-2/3 2xl:w-4/5 w-full space-y-4 pt-1">
        <!-- Dynamic page Content -->
        <div class="text-justify w-full px-2">
            <div class="prose max-w-full pb-[40px]">
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
