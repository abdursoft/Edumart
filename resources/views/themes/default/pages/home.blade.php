@extends(theme('layouts.app'))

@section('title', ($page->title ?? 'Home page'))

@section('meta')
    {{ metaContent('Home Page', 'This is the home page of the website.', theme_asset('images/home-banner.jpg'), 'home, page, website') }}
@endsection

@section('content')
@if(!empty($page->slider))
<x-hero-slider :slider="$page->slider"></x-hero-slider>
@endif


{{-- default layout section  --}}
<div class=" flex-col md:flex-row gap-4 hidden">

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



<div class="bg-gray-50 text-gray-800 antialiased">

    <!-- 2. Hero Section -->
    <section class="relative bg-cover bg-center h-[650px] flex items-center" style="background-image: linear-gradient(rgba(0,0,0,0.45), rgba(0,0,0,0.45)), url('https://images.unsplash.com/photo-1541339907198-e08756dedf3f?auto=format&fit=crop&w=1920&q=80');">
        <div class="max-w-7xl mx-auto px-6 w-full pt-16">
            <div class="max-w-2xl text-white">
                <h1 class="animate-fade-up animate-delay-2000 serif-title text-5xl md:text-6xl font-bold leading-tight mb-6">Shape Your Future With Excellence</h1>
                <p class="text-lg text-gray-200 mb-8 font-light">We provide a world-class education that inspires innovation, leadership, and global citizenship.</p>
                <div class="flex flex-wrap gap-4">
                    <a href="#" class="animate-fade-up bg-amber-500 hover:bg-amber-600 text-blue-950 font-semibold px-6 py-3 rounded text-sm transition">Explore Programs</a>
                    <a href="#" class="animate-fade-up animate-delay-2000 border border-white hover:bg-white/10 text-white font-semibold px-6 py-3 rounded text-sm transition">Learn More</a>
                </div>
            </div>
        </div>
    </section>

<div class="bg-white min-h-screen font-sans antialiased text-gray-900">

    {{-- Hero Section --}}
    <div class="relative bg-slate-900 overflow-hidden">
        <div class="absolute inset-0 z-0 opacity-40 mix-blend-multiply bg-gradient-to-r from-slate-950 to-slate-800"></div>
        
        {{-- Background Image Asset Placeholder --}}
        <div class="absolute inset-0 z-[-1]">
            <img src="https://images.unsplash.com/photo-1541339907198-e08756dedf3f?auto=format&fit=crop&w=1920&q=80" alt="University Campus" class="w-full h-full object-cover">
        </div>

        <div class="relative max-w-7xl mx-auto py-24 px-4 sm:py-32 sm:px-6 lg:px-8 z-10 flex items-center justify-center flex-col text-center">
            <span class="inline-flex items-center px-3 py-1 rounded-full text-xs font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20 mb-6 tracking-wide uppercase">
                Admissions Open for Autumn 2026
            </span>
            <h1 class="animate-fade-up animate-delay-1000 text-4xl font-extrabold tracking-tight text-white sm:text-5xl lg:text-6xl max-w-3xl leading-tight">
                Molding Thinkers, <br><span class="text-amber-400">Inspiring Innovation.</span>
            </h1>
            <p class="mt-6 text-xl text-slate-300 max-w-2xl leading-relaxed">
                Join a vibrant academic ecosystem dedicated to world-class research, exceptional mentorship, and global leadership development.
            </p>
            <div class="mt-10 flex flex-col sm:flex-row gap-4">
                <a href="#programs" class="inline-flex items-center justify-center px-6 py-3 border border-transparent text-base font-semibold rounded-lg shadow-sm text-slate-950 bg-amber-400 hover:bg-amber-500 transition-all duration-200">
                    Explore Programs
                </a>
                <a href="/admissions" class="inline-flex items-center justify-center px-6 py-3 border border-white/20 text-base font-semibold rounded-lg text-white bg-white/5 hover:bg-white/10 transition-all duration-200 backdrop-blur-sm">
                    Apply Online
                </a>
            </div>
        </div>
    </div>

    {{-- Institutional Overview & Stats --}}
    <div class="bg-slate-900 text-white border-t border-slate-800">
        <div class="max-w-7xl mx-auto grid grid-cols-2 lg:grid-cols-4 divide-x divide-y lg:divide-y-0 divide-slate-800 text-center py-10">
            <div class="p-6">
                <span class="block text-4xl lg:text-5xl font-black text-amber-400 mb-1">Top 50</span>
                <span class="text-sm tracking-wide text-slate-400 uppercase font-medium">Global Ranking</span>
            </div>
            <div class="p-6">
                <span class="block text-4xl lg:text-5xl font-black text-white mb-1">14,000+</span>
                <span class="text-sm tracking-wide text-slate-400 uppercase font-medium">Active Students</span>
            </div>
            <div class="p-6">
                <span class="block text-4xl lg:text-5xl font-black text-white mb-1">94%</span>
                <span class="text-sm tracking-wide text-slate-400 uppercase font-medium">Graduate Placement</span>
            </div>
            <div class="p-6">
                <span class="block text-4xl lg:text-5xl font-black text-amber-400 mb-1">$12M+</span>
                <span class="text-sm tracking-wide text-slate-400 uppercase font-medium">Research Funding</span>
            </div>
        </div>
    </div>

    {{-- Urgent Notice / Banner Strip --}}
    <div class="bg-amber-400 text-slate-950 px-4 py-3 sm:px-6 lg:px-8">
        <div class="max-w-7xl mx-auto flex flex-col sm:flex-row justify-between items-center gap-2 text-sm font-semibold">
            <div class="flex items-center gap-2">
                <span class="bg-slate-950 text-white text-xs px-2 py-0.5 rounded font-black uppercase tracking-wider">Notice</span>
                <span>Scholarship Assessment test schedules have been published for the upcoming fiscal session.</span>
            </div>
            <a href="#notices" class="underline hover:text-slate-800 flex-shrink-0">View Portal &rarr;</a>
        </div>
    </div>

    {{-- Academic Faculties Section --}}
    <div id="programs" class="py-20 bg-slate-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center max-w-3xl mx-auto mb-16">
                <h2 class="text-3xl font-extrabold text-slate-900 sm:text-4xl">Fields of Excellence</h2>
                <p class="mt-4 text-lg text-slate-500">Discover comprehensive structural degree paths handled by internationally recognized faculty members.</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                {{-- Engineering --}}
                <div class="animate-fade-up bg-white rounded-2xl border border-slate-200/60 shadow-sm hover:shadow-md transition group overflow-hidden">
                    <div class="h-48 overflow-hidden bg-slate-200">
                        <img src="https://images.unsplash.com/photo-1581092921461-eab62e97a780?auto=format&fit=crop&w=600&q=80" alt="Engineering Faculty" class="w-full h-full object-cover group-hover:scale-105 transition duration-300">
                    </div>
                    <div class="p-8">
                        <h3 class="text-xl font-bold text-slate-900 group-hover:text-indigo-600 transition">Faculty of Engineering & Tech</h3>
                        <p class="mt-3 text-sm text-slate-500 leading-relaxed">Pioneering solutions in software architectures, sustainable infrastructure, machine learning networks, and mechanical systems.</p>
                        <a href="#" class="mt-6 inline-flex items-center text-sm font-bold text-indigo-600 hover:text-indigo-800">Explore Degrees &rarr;</a>
                    </div>
                </div>

                {{-- Business --}}
                <div class="animate-fade-up animate-delay-1000 bg-white rounded-2xl border border-slate-200/60 shadow-sm hover:shadow-md transition group overflow-hidden">
                    <div class="h-48 overflow-hidden bg-slate-200">
                        <img src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f?auto=format&fit=crop&w=600&q=80" alt="Business School" class="w-full h-full object-cover group-hover:scale-105 transition duration-300">
                    </div>
                    <div class="p-8">
                        <h3 class="text-xl font-bold text-slate-900 group-hover:text-indigo-600 transition">School of Business Administration</h3>
                        <p class="mt-3 text-sm text-slate-500 leading-relaxed">Developing entrepreneurial acumen through strategic financial management, microeconomics analysis, and global resource logistics.</p>
                        <a href="#" class="mt-6 inline-flex items-center text-sm font-bold text-indigo-600 hover:text-indigo-800">Explore Degrees &rarr;</a>
                    </div>
                </div>

                {{-- Arts & Sciences --}}
                <div class="animate-fade-up animate-delay-2000 bg-white rounded-2xl border border-slate-200/60 shadow-sm hover:shadow-md transition group overflow-hidden">
                    <div class="h-48 overflow-hidden bg-slate-200">
                        <img src="https://images.unsplash.com/photo-1532094349884-543bc11b234d?auto=format&fit=crop&w=600&q=80" alt="Sciences Faculty" class="w-full h-full object-cover group-hover:scale-105 transition duration-300">
                    </div>
                    <div class="p-8">
                        <h3 class="text-xl font-bold text-slate-900 group-hover:text-indigo-600 transition">Faculty of Arts & Pure Sciences</h3>
                        <p class="mt-3 text-sm text-slate-500 leading-relaxed">Unveiling physical realities through core molecular research, advanced mathematics fields, humanities foundations, and sociology.</p>
                        <a href="#" class="mt-6 inline-flex items-center text-sm font-bold text-indigo-600 hover:text-indigo-800">Explore Degrees &rarr;</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Campus Life Visual Showcase --}}
    <div class="py-20 bg-white">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
                <div>
                    <span class="text-xs font-bold uppercase tracking-widest text-indigo-600 block mb-2">Campus Ecosystem</span>
                    <h2 class="text-3xl font-extrabold text-slate-900 sm:text-4xl tracking-tight">Life Outside the Classroom</h2>
                    <p class="mt-4 text-base text-slate-500 leading-relaxed">
                        Education doesn't stop when lectures finish. Our campus offers fully modern laboratories, high-capacity athletic centers, dedicated performance theaters, and over 60 active student clubs.
                    </p>
                    <div class="mt-8 grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div class="flex items-center gap-3">
                            <span class="p-2 rounded-lg bg-indigo-50 text-indigo-600">
                                <svg class="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"/></svg>
                            </span>
                            <span class="font-medium text-slate-700 text-sm">24/7 Smart Library Systems</span>
                        </div>
                        <div class="flex items-center gap-3">
                            <span class="p-2 rounded-lg bg-indigo-50 text-indigo-600">
                                <svg class="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3.055 11H5a2 2 0 012 2v1a2 2 0 002 2 2 2 0 012 2v2.945M8 3.935V5.5A2.5 2.5 0 0010.5 8h.5a2 2 0 012 2 2 2 0 002 2h2a2 2 0 002-2V7.5A2.5 2.5 0 0016.5 5h-.059a2 2 0 01-1.826-1.175l-.324-.652M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/></svg>
                            </span>
                            <span class="font-medium text-slate-700 text-sm">Global Exchange Residencies</span>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="grid grid-cols-2 gap-4">
                        <img src="image_agent_tag_2651203856276563622" alt="Modern Architecture Campus Building" class="rounded-xl shadow-md w-full h-64 object-cover">
                        <img src="image_agent_tag_2651203856276563639" alt="Students in library setting" class="rounded-xl shadow-md w-full h-64 object-cover mt-8">
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Split News and Notice Board --}}
    <div class="py-20 bg-slate-900 text-white">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 lg:grid-cols-3 gap-12">
                
                {{-- News Stream Column --}}
                <div class="lg:col-span-2 space-y-8">
                    <div class="flex justify-between items-baseline border-b border-slate-800 pb-4">
                        <h3 class="text-2xl font-bold tracking-tight">University Press & News</h3>
                        <a href="#" class="text-sm font-semibold text-amber-400 hover:text-amber-300">All Updates &rarr;</a>
                    </div>

                    <div class="space-y-6">
                        <article class="flex flex-col sm:flex-row gap-6 items-start group">
                            <time class="sm:w-24 text-sm font-mono text-slate-400 pt-1 flex-shrink-0">July 02, 2026</time>
                            <div>
                                <h4 class="text-lg font-bold group-hover:text-amber-400 transition"><a href="#">Biochemistry lab identifies alternative enzymes targeting plastic reduction</a></h4>
                                <p class="text-sm text-slate-400 mt-2 leading-relaxed">Our chemical engineering research fellowship has published groundbreaking environmental results in coordination with regional entities.</p>
                            </div>
                        </article>

                        <article class="flex flex-col sm:flex-row gap-6 items-start group">
                            <time class="sm:w-24 text-sm font-mono text-slate-400 pt-1 flex-shrink-0">June 24, 2026</time>
                            <div>
                                <h4 class="text-lg font-bold group-hover:text-amber-400 transition"><a href="#">Annual Innovation Summit hosts 40 tech frameworks and venture founders</a></h4>
                                <p class="text-sm text-slate-400 mt-2 leading-relaxed">Students from across deep tech faculties demoed working MVPs to visiting accelerators and enterprise product designers.</p>
                            </div>
                        </article>
                    </div>
                </div>

                {{-- Academic Notices Column --}}
                <div id="notices" class="bg-slate-950 p-6 rounded-2xl border border-slate-800 flex flex-col justify-between">
                    <div>
                        <div class="flex items-center gap-2 mb-6 text-sm font-bold text-amber-400 uppercase tracking-wider">
                            <svg class="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v1.341C7.67 7.165 6 9.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"/></svg>
                            <span>Official Board</span>
                        </div>

                        <div class="space-y-4 divide-y divide-slate-800">
                            <div class="pt-3 first:pt-0">
                                <a href="#" class="block text-sm font-semibold hover:text-amber-300 transition mb-1">Final Exam Schedules - Summer Term 2026</a>
                                <span class="text-xs text-slate-500 font-mono">Published: June 28, 2026</span>
                            </div>
                            <div class="pt-3">
                                <a href="#" class="block text-sm font-semibold hover:text-amber-300 transition mb-1">Undergraduate Convocation Registration Guidelines</a>
                                <span class="text-xs text-slate-500 font-mono">Published: June 15, 2026</span>
                            </div>
                            <div class="pt-3">
                                <a href="#" class="block text-sm font-semibold hover:text-amber-300 transition mb-1">Procurement Tenders for Advanced Materials Lab Upgrades</a>
                                <span class="text-xs text-slate-500 font-mono">Published: June 04, 2026</span>
                            </div>
                        </div>
                    </div>

                    <a href="#" class="mt-8 block text-center bg-slate-900 border border-slate-800 hover:bg-slate-800 text-xs font-bold uppercase tracking-wider py-2.5 rounded-lg text-slate-300 transition">
                        Enter Student Portal
                    </a>
                </div>

            </div>
        </div>
    </div>

    {{-- CTA Form / Call to Action --}}
    <div id="apply" class="py-20 bg-slate-50 border-t border-slate-200">
        <div class="max-w-4xl mx-auto px-4 text-center">
            <h2 class="text-3xl font-extrabold text-slate-900 sm:text-4xl tracking-tight">Begin Your Academic Journey Today</h2>
            <p class="mt-4 text-lg text-slate-500">
                Admissions details, application rules, credit allocations, and fee waiver paths are systematically guided through our tracking systems.
            </p>
            <div class="mt-10 flex flex-col sm:flex-row justify-center items-center gap-4">
                <a href="#" class="w-full sm:w-auto inline-flex items-center justify-center px-8 py-4 bg-indigo-600 hover:bg-indigo-700 text-white font-bold rounded-xl shadow-lg transition">
                    Start Application Framework
                </a>
                <a href="#" class="w-full sm:w-auto inline-flex items-center justify-center px-8 py-4 bg-white border border-slate-300 hover:bg-slate-100 text-slate-700 font-bold rounded-xl transition shadow-sm">
                    Request Prospectus (PDF)
                </a>
            </div>
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
