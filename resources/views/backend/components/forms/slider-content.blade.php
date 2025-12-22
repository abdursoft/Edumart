<form
    action="@if ($content) {{ route('admin.media.slider.content.update', ['id' => $content['id']]) }}@else{{ route('admin.media.slider.content.upload') }}@endif"
    method="POST" enctype="multipart/form-data">

    <x-fieldset title="{{$slider?->name ?? 'content'}}">

        <x-input-form :fields="[
            [
                'label' => 'Title',
                'name' => 'title',
                'type' => 'text',
                // 'required' => true,
                'placeholder' => 'Historical place',
            ],

            [
                'label' => 'Media File',
                'name' => 'media_url',
                'type' => 'file',
                // 'required' => true,
            ],

            [
                'label' => 'Index Order',
                'name' => 'order',
                'type' => 'number',
                'default' => 0
            ],
            [
                'name' => 'slider_id',
                'type' => 'hidden',
                'default' => $slider?->id ?? null
            ],
            [
                'label' => 'Status',
                'name'  => 'status',
                'type'  => 'select',
                'options' => ['active' => 'Active', 'inactive' => 'Inactive'],
            ],
            [
                'label' => 'Description',
                'name' => 'description',
                'type' => 'textarea'
            ]
        ]" :form="$content" cols="2" />



        <x-button
         style="margin-top:110px !important;"
         :items="[
            [
                'label' => 'Cancel',
                'type' => 'reset',
                'style' =>
                    'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white',
            ],
            [
                'label' => 'Save',
                'type' => 'submit',
                'style' =>
                    'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white',
            ],
            [
                'label' => 'New',
                'type' => 'button',
                'style' =>
                    'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white',
                'click' => 'window.location.href=`' . route('admin.media.slider') . '`',
            ],
        ]" position="end"></x-button>

    </x-fieldset>

</form>
