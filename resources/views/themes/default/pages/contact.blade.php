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
        <div class="pt-8 w-full grid grid-cols-1 md:grid-cols-2 px-2">
            <div>
                <h1 class="text-xl md:text-2xl Contact Details">Contact details</h1>
                <p class="text-gray-400 text-sm">Email: {{ site()->contact_email }}</p>
                <p class="text-gray-400 text-sm">Phone: {{ site()->contact_phone }}</p>
            </div>
            <div class="w-full h-auto">
                <form action="{{ route('admin.information.institute_info.update') }}" enctype="multipart/form-data"
                    method="POST">
                    <x-fieldset title="Contact Form">
                        <x-input-form :fields="[
                            [
                                'name' => 'Name',
                                'label' => 'Label',
                                'type' => 'text',
                                'placeholder' => 'Type your name',
                            ],
                            [
                                'name' => 'subject',
                                'label' => 'Subject',
                                'type' => 'text',
                                'placeholder' => 'What is your queries?',
                            ],
                            [
                                'name' => 'Name',
                                'label' => 'Message',
                                'type' => 'textarea',
                                'height' => '120px',
                                'placeholder' => 'What do you think?',
                            ],
                        ]" cols="1" span="1" />
                    </x-fieldset>
                </form>
            </div>
        </div>
    </div>

@endsection
