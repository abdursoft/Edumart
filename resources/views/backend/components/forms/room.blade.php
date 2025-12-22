<form
    action="@if ($room) {{ route('admin.academic.structure.rooms.update', ['id' => $room['id']]) }}@else{{ route('admin.academic.structure.rooms.add') }} @endif"
    method="POST">

    <x-fieldset title="Room">

        <x-input-form :fields="[
            [
                'label' => 'Room Name',
                'name' => 'name',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'e.g. Room 101',
            ],

            [
                'label' => 'Room Code',
                'name' => 'code',
                'type' => 'number',
                'required' => true,
                'placeholder' => 'e.g. 101',
            ],

            ['label' => 'Capacity', 'name' => 'capacity', 'type' => 'number', 'placeholder' => 'e.g. 60'],

            [
                'label' => 'Location',
                'name' => 'location',
                'type' => 'text',
                'placeholder' => 'e.g. Main Building, 1st Floor',
            ],

            [
                'label' => 'Room Type',
                'name' => 'type',
                'type' => 'select',
                'options' => ['Lecture' => 'Lecture', 'Lab' => 'Lab', 'Auditorium' => 'Auditorium'],
                'default' => 'Lecture',
                'placeholder' => 'Select Room Type',
            ],
        ]" :form="$room" cols="3" />



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
                'click' => 'window.location.href=`' . route('admin.academic.structure.rooms') . '`',
            ],
        ]" position="end"></x-button>

    </x-fieldset>

</form>
