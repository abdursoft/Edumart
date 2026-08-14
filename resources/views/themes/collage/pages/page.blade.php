@extends('themes.collage.layouts.app')

@section('title', $page->title)

@section('meta')
    {{ metaContent($page?->meta_title, $page?->meta_description, theme_asset('images/home-banner.jpg'), 'home, page, website') }}
@endsection


@section('content')
    @if (!empty($page->slider))
        <x-hero-slider :slider="$page->slider"></x-hero-slider>
    @endif

    <div class="flex mx-auto max-w-7xl py-5 flex-col md:flex-row gap-4">
        <!-- Dynamic page Content -->
        <div class="text-justify w-full px-2">
            <div class="prose max-w-full pb-[40px]">
                {!! $page->content ?? '' !!}
            </div>
        </div>
    </div>

@endsection


{{-- load style and script for this page only --}}
@section('styles')
    <link rel="stylesheet" href="{{ theme_asset('css/smart-marquee.css') }}">
@endsection
