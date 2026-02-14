@extends(theme('layouts.app'))
@section('title', 'Contact us')

@section('content')
    <!-- contact page & google map -->
    <div class="w-full">
        <!-- map -->
        <div class="w-full h-[450px] rounded overflow-hidden">
            {!! str_replace('<iframe', '<iframe style="width:100%;height:100%;border:0;"', html_entity_decode(site()->map)) !!}
        </div>

        <!-- contact details -->
        <div class="pt-8 w-full grid grid-cols-1 md:grid-cols-2 px-2 pb-[30px]">
            <div class="flex items-center justify-center flex-col">
                <div class="w-full md:max-w-[400px] mt-3">
                    <h1 class="text-xl md:text-2xl Contact Details">Contact details</h1>
                    <p class="text-gray-400 text-sm">Email: {{ site()->contact_email }}</p>
                    <p class="text-gray-400 text-sm">Phone: {{ site()->contact_phone }}</p>
                    <div class="flex items-center gap-3 mt-3">
                        @foreach(site()->social_links as $link=>$url)
                            <a href="{{$url}}" class="hover:text-red-600" target="_blank">{!! icons($link) !!}</a>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="w-full h-auto pb-[20px] rounded-md shadow-md">
                <h2 class="text-xl md:text-3xl border-b border-gray-200 text-center mb-3 p-2">Get in touch today</h2>
                <form id="contactForm"
                    autocomplete="off"
                    method="POST" class="p-3">
                    <x-input-form :fields="[
                        [
                            'name' => 'name',
                            'label' => 'Your name',
                            'type' => 'text',
                            'placeholder' => 'Type your name',
                        ],
                        [
                            'name' => 'email',
                            'label' => 'Valid email',
                            'type' => 'email',
                            'placeholder' => 'eg. abdur@gmail.com',
                        ],
                        [
                            'name' => 'subject',
                            'label' => 'Subject',
                            'type' => 'text',
                            'placeholder' => 'What is your queries?',
                        ],
                        [
                            'name' => 'message',
                            'label' => 'Message',
                            'type' => 'textarea',
                            'height' => '120px',
                            'placeholder' => 'What do you think?',
                        ],
                    ]" cols="1" span="1" />

                    <!-- captcha -->
                    <div class="w-full flex items-center justify-between gap-2" style="margin-top:100px;" >
                        <input type="text" name="captcha" class="block w-full rounded-md border-gray-100 bg-gray-100 text-gray-900 focus:ring-teal-500 focus:border-teal-500 py-2 px-1" placeholder="captcha text" id="captcha">
                        <img src="{{route("captcha")}}" class="w-[150px] h-[40px] rounded-md" alt="" id="captchaImg">
                        <button type="button" id="captchaReloader" class="rounded-md text-white cursor-pointer bg-slate-600 p-2 flex items-center justify-center"><iconify-icon icon="mdi:reload" width="24" height="24" class="text-white"></iconify-icon></button>
                    </div>

                    <x-button :items="[
                        [
                            'label' => 'Cancel',
                            'type' => 'reset',
                            'style' =>
                                'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white',
                        ],
                        [
                            'label' => 'Send',
                            'type' => 'submit',
                            'style' =>
                                'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white',
                        ],
                    ]" position="end"></x-button>
                </form>
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
