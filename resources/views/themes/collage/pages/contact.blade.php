@extends(theme('layouts.app'))
@section('title', 'Contact us')

@section('content')
    <!-- contact page & google map -->
<div class="bg-gray-50 min-h-screen py-16 px-4 sm:px-6 lg:px-8">
    <div class="max-w-7xl mx-auto">
        
        {{-- Header Section --}}
        <div class="text-center mb-16">
            <h1 class="text-4xl font-extrabold text-gray-900 tracking-tight sm:text-5xl">
                How can we help you today?
            </h1>
            <p class="mt-4 text-xl text-gray-500 max-w-3xl mx-auto">
                Reach out to the right team immediately, browse our working hours, or check out our frequently asked questions below.
            </p>
        </div>

        {{-- Success Alert --}}
        @if(session('success'))
            <div class="mb-12 p-4 bg-green-50 border-l-4 border-green-500 text-green-700 rounded-r-lg shadow-sm max-w-6xl mx-auto">
                <div class="flex items-center">
                    <svg class="h-5 w-5 mr-3 flex-shrink-0" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                    </svg>
                    <span class="font-medium">{{ session('success') }}</span>
                </div>
            </div>
        @endif

        {{-- Main Interaction Split --}}
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-8 max-w-6xl mx-auto mb-20 bg-white rounded-2xl shadow-xl overflow-hidden">
            
            {{-- Info Sidebar --}}
            <div class="bg-slate-900 p-8 lg:p-12 text-white flex flex-col justify-between">
                <div class="space-y-10">
                    <div>
                        <h3 class="text-2xl font-bold tracking-tight mb-3">Our HQ</h3>
                        <p class="text-slate-400 text-sm leading-relaxed">
                            Stop by our main office for a coffee or reach us directly via the lines below.
                        </p>
                    </div>
                    
                    {{-- Quick Contact Details --}}
                    <div class="space-y-6">
                        <div class="flex items-start">
                            <div class="flex-shrink-0 bg-slate-800 p-3 rounded-lg text-indigo-400">
                                <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.94.725l.548 2.2a1 1 0 01-.321.988l-1.305.98a10.582 10.582 0 004.872 4.872l.98-1.305a1 1 0 01.988-.321l2.2.548a1 1 0 01.725.94V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                                </svg>
                            </div>
                            <div class="ml-4">
                                <span class="block text-xs font-semibold text-slate-400 uppercase tracking-wider">Phone Line</span>
                                <span class="text-base font-medium text-slate-200">+1 (555) 019-2834</span>
                            </div>
                        </div>

                        <div class="flex items-start">
                            <div class="flex-shrink-0 bg-slate-800 p-3 rounded-lg text-indigo-400">
                                <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                                </svg>
                            </div>
                            <div class="ml-4">
                                <span class="block text-xs font-semibold text-slate-400 uppercase tracking-wider">Address</span>
                                <span class="text-base font-medium text-slate-200">123 Innovation Way, Suite 100<br>San Francisco, CA 94103</span>
                            </div>
                        </div>
                    </div>

                    {{-- Structured Operating Hours --}}
                    <div class="pt-8 border-t border-slate-800">
                        <h4 class="text-xs font-semibold text-slate-400 uppercase tracking-wider mb-4">Operating Hours</h4>
                        <ul class="space-y-2 text-sm text-slate-300">
                            <li class="flex justify-between">
                                <span>Monday - Friday</span>
                                <span class="font-medium text-white">9:00 AM - 6:00 PM</span>
                            </li>
                            <li class="flex justify-between">
                                <span>Saturday</span>
                                <span class="font-medium text-white">10:00 AM - 2:00 PM</span>
                            </li>
                            <li class="flex justify-between text-slate-500">
                                <span>Sunday</span>
                                <span>Closed</span>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="mt-8 pt-6 border-t border-slate-800 text-xs text-slate-400">
                    Expected response times for form submissions: <strong class="text-indigo-400">Under 4 hours</strong>.
                </div>
            </div>

            {{-- Contact Form + Routing Dropdown --}}
            <div class="p-8 lg:p-12 lg:col-span-2">
                <form action="" method="POST" class="space-y-6">
                    @csrf
                    
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
                        <div>
                            <label for="name" class="block text-sm font-semibold text-gray-700 mb-1">Full Name</label>
                            <input type="text" name="name" id="name" value="{{ old('name') }}" required
                                class="w-full px-4 py-2.5 border @error('name') border-red-500 @else border-gray-300 @enderror rounded-lg focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none transition">
                            @error('name') <p class="text-red-500 text-xs mt-1">{{ $message }}</p> @enderror
                        </div>

                        <div>
                            <label for="email" class="block text-sm font-semibold text-gray-700 mb-1">Email Address</label>
                            <input type="email" name="email" id="email" value="{{ old('email') }}" required
                                class="w-full px-4 py-2.5 border @error('email') border-red-500 @else border-gray-300 @enderror rounded-lg focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none transition">
                            @error('email') <p class="text-red-500 text-xs mt-1">{{ $message }}</p> @enderror
                        </div>
                    </div>

                    {{-- Informative Department Router --}}
                    <div>
                        <label for="department" class="block text-sm font-semibold text-gray-700 mb-1">Who do you need to reach?</label>
                        <select name="department" id="department" required
                            class="w-full px-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none transition bg-white">
                            <option value="support" {{ old('department') == 'support' ? 'selected' : '' }}>Customer & Technical Support (Existing Users)</option>
                            <option value="sales" {{ old('department') == 'sales' ? 'selected' : '' }}>Sales & Partnerships (Enterprise & High Volume)</option>
                            <option value="billing" {{ old('department') == 'billing' ? 'selected' : '' }}>Billing, Invoices & Accounts</option>
                            <option value="general" {{ old('department') == 'general' ? 'selected' : '' }}>General Inquiries / Media</option>
                        </select>
                    </div>

                    <div>
                        <label for="subject" class="block text-sm font-semibold text-gray-700 mb-1">Subject</label>
                        <input type="text" name="subject" id="subject" value="{{ old('subject') }}" required
                            class="w-full px-4 py-2.5 border @error('subject') border-red-500 @else border-gray-300 @enderror rounded-lg focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none transition">
                        @error('subject') <p class="text-red-500 text-xs mt-1">{{ $message }}</p> @enderror
                    </div>

                    <div>
                        <label for="message" class="block text-sm font-semibold text-gray-700 mb-1">Message Details</label>
                        <textarea name="message" id="message" rows="5" required placeholder="Please provide order IDs or specific account emails if relevant..."
                            class="w-full px-4 py-2.5 border @error('message') border-red-500 @else border-gray-300 @enderror rounded-lg focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none transition resize-none">{{ old('message') }}</textarea>
                        @error('message') <p class="text-red-500 text-xs mt-1">{{ $message }}</p> @enderror
                    </div>

                    <div class="flex items-center justify-between pt-2">
                        <p class="text-xs text-gray-400 max-w-xs">By submitting, you agree to our privacy policy regarding data collection.</p>
                        <button type="submit" 
                            class="bg-indigo-600 hover:bg-indigo-700 text-white font-semibold px-6 py-3 rounded-lg shadow-md hover:shadow-lg transition-all duration-200">
                            Send Message
                        </button>
                    </div>
                </form>
            </div>
        </div>

        {{-- Direct Department Directory Section --}}
        <div class="max-w-6xl mx-auto mb-20">
            <h3 class="text-xl font-bold text-gray-900 mb-6">Direct Channels</h3>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <div class="p-6 bg-white rounded-xl border border-gray-200 shadow-sm">
                    <h4 class="font-bold text-gray-900 mb-2">Technical Support</h4>
                    <p class="text-sm text-gray-500 mb-4">Encountered a bug or trouble logging in?</p>
                    <a href="mailto:support@example.com" class="text-sm font-semibold text-indigo-600 hover:text-indigo-800">support@example.com &rarr;</a>
                </div>
                <div class="p-6 bg-white rounded-xl border border-gray-200 shadow-sm">
                    <h4 class="font-bold text-gray-900 mb-2">Sales & Business</h4>
                    <p class="text-sm text-gray-500 mb-4">Custom pricing, API integration inquiries, and high-volume deals.</p>
                    <a href="mailto:sales@example.com" class="text-sm font-semibold text-indigo-600 hover:text-indigo-800">sales@example.com &rarr;</a>
                </div>
                <div class="p-6 bg-white rounded-xl border border-gray-200 shadow-sm">
                    <h4 class="font-bold text-gray-900 mb-2">Press & Media</h4>
                    <p class="text-sm text-gray-500 mb-4">Logo packs, interview requests, and media kit resources.</p>
                    <a href="mailto:press@example.com" class="text-sm font-semibold text-indigo-600 hover:text-indigo-800">press@example.com &rarr;</a>
                </div>
            </div>
        </div>

        {{-- Embedded Map Placeholder --}}
        <div class="max-w-6xl mx-auto mb-20">
            <div class="w-full h-80 bg-gray-200 rounded-2xl overflow-hidden relative shadow-inner border border-gray-200 flex items-center justify-center">
                {{-- Replace this div container with an actual Google Maps/Mapbox iframe if desired --}}
                <div class="text-center p-4">
                    <svg class="h-8 w-8 text-gray-400 mx-auto mb-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 20l-5.447-2.724A1 1 0 013 16.382V5.618a1 1 0 011.447-.894L9 7m0 13l6-3m-6 3V7m6 10l4.553 2.276A1 1 0 0021 18.382V7.618a1 1 0 00-.553-.894L15 4m0 13V4m0 0L9 7" />
                    </svg>
                    <p class="text-sm font-medium text-gray-600">Interactive Map Component Location</p>
                    <p class="text-xs text-gray-400 mt-1">123 Innovation Way, San Francisco, CA</p>
                </div>
            </div>
        </div>

        {{-- Frequently Asked Questions (Self-Service Block) --}}
        <div class="max-w-4xl mx-auto border-t border-gray-200 pt-16">
            <h3 class="text-2xl font-bold text-gray-900 text-center mb-10">Frequently Asked Questions</h3>
            <div class="space-y-6">
                <div class="bg-white p-6 rounded-xl border border-gray-100 shadow-sm">
                    <h4 class="text-base font-semibold text-gray-900 mb-2">When should I expect a response?</h4>
                    <p class="text-sm text-gray-600">Our average response time across support desks is 2 to 4 hours during normal operations. Over weekends or holidays, this may take up to 24 hours.</p>
                </div>
                <div class="bg-white p-6 rounded-xl border border-gray-100 shadow-sm">
                    <h4 class="text-base font-semibold text-gray-900 mb-2">Can I update my billing or account details through this form?</h4>
                    <p class="text-sm text-gray-600">For security reasons, we do not process password resets or update direct payment methods via support tickets. Please log into your dashboard settings panel instead.</p>
                </div>
                <div class="bg-white p-6 rounded-xl border border-gray-100 shadow-sm">
                    <h4 class="text-base font-semibold text-gray-900 mb-2">Do you offer API technical support?</h4>
                    <p class="text-sm text-gray-600">Yes. If you choose the <strong>Customer & Technical Support</strong> option in the dropdown and provide details about your endpoint environments, you will be automatically routed to our engineering desk.</p>
                </div>
            </div>
        </div>

    </div>
</div>


@endsection


@push('styles')
    {{-- custom override js and css  --}}
    <link href="{{ asset('ui/admin.css') }}" rel="stylesheet">

    {{-- editor assets  --}}
    <link rel="stylesheet" href="{{ asset('ui/editor/table.css') }}">
@endpush

@push('scripts')
<script type="module">
    function refreshCaptcha() {
        document.getElementById('captchaImg').src = '{{route("captcha")}}?' + Date.now();
    }

    $("#captchaReloader").on('click',function(){
        refreshCaptcha();
    });

    $("#contactForm").on('submit', (e) => {
        e.preventDefault();

        const form = $("#contactForm").serialize();

        axios.post('{{route('contact.post')}}', form, { withCredentials: true })
        .then(function(response){
            if(response.status === 200){
                toastr.success(response.data.message, 'Success');
            }else{
                refreshCaptcha();
            }
        })
        .catch(function(error){
            refreshCaptcha();
            if(error.response.status === 422){
                let errors = error.response.data.errors;
                for (const key in errors) {
                    const element = errors[key];
                    toastr.error(errors[key],key);
                }
            } else if(error.response.status === 401){
                toastr.error(error.response.data.message, 'Login Failed');
            }
        });
    })
</script>
@endpush
