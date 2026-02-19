@extends('backend.layouts.app')

@section('title', 'Sms gateway management')


@section('content')
    <!-- Set default sms gateway -->
    <h1 class="text-lg md:text-xl font-semibold mb-3 text-gray-500">Set default sms gateway</h1>
    <form action="{{route('admin.settings.sms.default')}}" method="POST" class="mb-6">
        @csrf
        <x-input-form
            :fields="[
                ['label' => 'Select Default SMS Gateway', 'name' => 'sms_method_id', 'type' => 'select', 'options' => $methods, 'default' => $default->sms_method_id ?? '']
            ]"
            :form="$default"
        />
        <x-button :items="[
            ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white']
        ]" position="end"></x-button>
    </form>

    <!-- SMS Settings -->
    <h1 class="text-lg md:text-xl font-semibold mb-3 text-gray-500">Configure your preferred SMS settings</h1>
    <div class="w-full grid grid-cols-1 md:grid-cols-2 gap-3">
        @foreach($smsMethods as $sms)
            <div>
                <form action="{{route('admin.settings.sms.add')}}" method="POST">
                    @csrf

                    <x-fieldset
                    :title="$sms->name">
                        @php
                            $fields = [];
                            $fields[] = ['label' => '', 'name' => 'name', 'type' => 'hidden', 'value' => $sms->name];
                            $fields[] = ['label' => '', 'name' => 'keyword', 'type' => 'hidden', 'value' => $sms->keyword];
                        @endphp

                        @foreach(json_decode($sms->attributes, true) ?? [] as $attr)
                            @php
                                $fields[] = ['label' => $attr['name'], 'name' => "attributes[{$attr['code']}]", 'default' => $attr['value'], 'type' => 'text', 'required' => true];
                            @endphp
                        @endforeach

                        <x-input-form
                            :fields="$fields"
                            :form="$sms"
                            cols="3"
                        />

                            <x-button :items="[
                                ['label' => 'Activated', 'type' => 'button', 'style' => 'bg-gray-300 rounded-md p-2 text-sm cursor-none '.($default && $default->sms_method_id == $sms->id ? '' : ' hidden')],
                                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white']
                            ]" position="{{$default && $default->sms_method_id == $sms->id ? 'between' : 'end'}}"></x-button>

                    </x-fieldset>
                </form>
            </div>
        @endforeach
    </div>
@endsection
