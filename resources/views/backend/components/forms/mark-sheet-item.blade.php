<form
    action="@if ($marksheet) {{ route('admin.academic.evaluation.mark_sheet.item.update', ['id' => $marksheet['id']]) }}@else{{ route('admin.academic.evaluation.mark_sheet.item.add',['id' => $exam_marksheet_id]) }}@endif"
    method="POST">

    <x-fieldset title="Mark Sheet">

        <x-input-form :fields="[
            [
                'label' => '',
                'name' => 'exam_marksheet_id',
                'type' => 'hidden',
                'placeholder' => 'Select Marksheet',
                'default' => $exam_marksheet_id,
            ],

            [
                'label' => 'Subject',
                'name' => 'subject_id',
                'type' => 'select',
                'placeholder' => 'Select Subject',
                'options' => $subjects,
            ],

            ['label' => 'MCQ Marks', 'name' => 'mcq_marks', 'type' => 'number', 'placeholder' => 'e.g. 25'],
            ['label' => 'Writing Marks', 'name' => 'writing_marks', 'type' => 'number', 'placeholder' => 'e.g. 50'],
            ['label' => 'Practical Marks', 'name' => 'practical_marks', 'type' => 'number', 'placeholder' => 'e.g. 20'],
            [
                'label' => 'Attendance Marks',
                'name' => 'attendance_marks',
                'type' => 'number',
                'placeholder' => 'e.g. 5',
            ],

            ['label' => 'Total Marks', 'name' => 'total_marks', 'type' => 'number', 'placeholder' => 'e.g. 100'],
            [
                'label' => 'Is Passed',
                'name' => 'is_passed',
                'type' => 'select',
                'options' => [1 => 'Yes', 0 => 'No'],
                'default' => 1,
            ],

            [
                'label' => 'Grade',
                'name' => 'grade',
                'type' => 'select',
                'options' => ['A', 'A+', 'A-', 'B', 'B+', 'B-', 'C', 'D', 'F'],
                'default' => 'allowed',
            ],
        ]" :form="$marksheet" cols="3" />




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
                'click' => 'window.location.href=`' . route('admin.academic.evaluation.mark_sheet') . '`',
            ],
        ]" position="end"></x-button>

    </x-fieldset>

</form>
