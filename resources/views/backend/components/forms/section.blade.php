<form
    action="@if ($section) {{ route('admin.academic.structure.sections.update', ['id' => $section['id']]) }}@else{{ route('admin.academic.structure.sections.add') }} @endif"
    method="POST">

    @csrf
    <x-fieldset title="New Section">

        <x-input-form :fields="[
            [
                'label' => 'Class',
                'name' => 'edu_class_id',
                'type' => 'select',
                'required' => true,
                'options' => $classes,
            ],

            [
                'label' => 'Section name',
                'name' => 'name',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'A',
            ],
            [
                'label' => 'Description',
                'name' => 'description',
                'type' => 'text',
                'required' => false,
                'placeholder' => 'Elite students',
            ],
        ]" :form="$section" cols="1" />



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
                'click' => 'window.location.href=`' . route('admin.academic.structure.sections') . '`',
            ],
        ]" position="end"></x-button>

    </x-fieldset>

</form>
