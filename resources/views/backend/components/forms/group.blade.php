<form
    action="@if ($group) {{ route('admin.academic.structure.group.update', ['id' => $group['id']]) }}@else{{ route('admin.academic.structure.group.add') }} @endif"
    method="POST">

    <x-fieldset title="New group">

        <x-input-form :fields="[
            [
                'label' => 'Sections',
                'name' => 'edu_section_id',
                'type' => 'select',
                'required' => true,
                'options' => $sections,
            ],

            [
                'label' => 'Group name',
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
        ]" :form="$group" cols="1" />



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
                'click' => 'window.location.href=`' . route('admin.academic.structure.group') . '`',
            ],
        ]" position="end"></x-button>

    </x-fieldset>

</form>
