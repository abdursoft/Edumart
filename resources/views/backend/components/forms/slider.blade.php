<form
    action="@if ($slider) {{ route('admin.media.slider.update', ['id' => $slider['id']]) }}@else{{ route('admin.media.slider.add') }} @endif"
    method="POST">

    <x-fieldset title="Slider">

        <x-input-form :fields="[
            [
                'label' => 'Slider Name',
                'name' => 'name',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'e.g. Hero slider',
            ],

            [
                'label' => 'Slider Type',
                'name' => 'type',
                'type' => 'select',
                'required' => true,
                'options' => ['image' => 'Image', 'video' => 'Video'],
            ],

            [
                'label' => 'Select a page',
                'name' => 'page_id',
                'type' => 'select',
                'required' => false,
                'placeholder' => 'Select page',
                'options' => $pages->pluck('title','id')->toArray(),
            ],

            [
                'label' => 'Select a post',
                'name' => 'post_id',
                'type' => 'select',
                'required' => false,
                'placeholder' => 'Select post',
                'options' => $posts->pluck('title','id')->toArray(),
            ],

            [
                'label' => 'Status',
                'name' => 'status',
                'type' => 'select',
                'options' => ['active' => 'Active', 'inactive' => 'Inactive'],
            ]
        ]" :form="$slider" cols="3" />



        <x-button :items="[
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
