<form action="@if($exam){{route('admin.academic.evaluation.exams.update', ['id' => $exam['id']])}}@else{{route('admin.academic.evaluation.exams.add')}} @endif" method="POST">

    <x-fieldset
    title="Exam">

        <x-input-form
            :fields="[
                ['label' => 'Exam Name',
                'name' => 'name',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'e.g. Mid Term Examination'],

                ['label' => 'Exam Code',
                'name' => 'code',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'e.g. MID2025-CLS10'],

                ['label' => 'Year',
                'name' => 'year',
                'type' => 'number',
                'required' => true,
                'placeholder' => date('Y'),
                'default' => date('Y')],

                ['label' => 'Session',
                'name' => 'session',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'e.g. 2024-2025'],

                ['label' => 'Class',
                'name' => 'edu_class_id',
                'type' => 'select',
                'required' => true,
                'placeholder' => 'Select a class',
                'options' => $classes->pluck('name','id')->toArray()],

                ['label' => 'Exam Type',
                'name' => 'type',
                'type' => 'select',
                'required' => true,
                'options' => ['Class Test', 'Mid-Term', 'Final', 'Quiz', 'Practical', 'Other'],
                'default' => 'Other'],

                ['label' => 'Status',
                'name' => 'status',
                'type' => 'select',
                'required' => true,
                'options' => ['Scheduled', 'Completed', 'Canceled','Ongoing'],
                'default' => 'Scheduled'],

                ['label' => 'Start Date',
                'name' => 'start_date',
                'type' => 'date',
                'placeholder' => 'Select start date'],

                ['label' => 'End Date',
                'name' => 'end_date',
                'type' => 'date',
                'placeholder' => 'Select end date'],

                ['label' => 'Description',
                'name' => 'description',
                'type' => 'textarea',
                'placeholder' => 'Add any additional information...'],
            ]"

            :form="$exam ?? null"
            cols="3"
        />




            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.academic.evaluation.exams').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>
