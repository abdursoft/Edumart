<form action="@if($subject){{route('admin.academic.structure.subjects.update', ['id' => $subject['id']])}}@else{{route('admin.academic.structure.subjects.add')}} @endif" method="POST">

    <x-fieldset
        title="Subject">

        <x-input-form
            :fields="[
                ['label' => 'Subject Name', 'name' => 'name', 'type' => 'text', 'required' => true, 'placeholder' => 'e.g. Mathematics'],

                ['label' => 'Subject Code', 'name' => 'code', 'type' => 'text', 'placeholder' => 'e.g. MATH101', 'required' => true,],

                ['label' => 'Type', 'name' => 'type', 'type' => 'select', 'options' => ['theory' => 'Theory', 'lab' => 'Lab', 'tech' => 'Tech'], 'default' => 'theory', 'placeholder' => 'Select Type', 'required' => true,],

                ['label' => 'Period Duration', 'name' => 'period', 'type' => 'text', 'placeholder' => 'e.g. 45m or 1h', 'required' => true,],

                ['label' => 'Class', 'name' => 'edu_class_id', 'type' => 'select', 'options' => $classes->pluck('name', 'id')->toArray(), 'placeholder' => 'Select Class', 'required' => true,],

                ['label' => 'Assigned Teacher', 'name' => 'teacher_id', 'type' => 'select', 'options' => $teachers->pluck('name', 'id')->toArray(), 'placeholder' => 'Select Teacher', 'required' => true,],
            ]"
            :form="$subject"
            cols="3"
        />

        <x-button :items="[
            ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
            ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
            ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.academic.structure.subjects').'`']
        ]" position="end"></x-button>

    </x-fieldset>

</form>
