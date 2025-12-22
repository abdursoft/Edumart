<form
    action="@if ($examSubject) {{ route('admin.academic.evaluation.exam_subject.update', ['id' => $examSubject['id']]) }}@else{{ route('admin.academic.evaluation.exam_subject.add') }} @endif"
    method="POST">

    <x-fieldset title="Exam">

        <x-input-form :fields="[
            [
                'label' => 'Exam',
                'name' => 'exam_id',
                'type' => 'select',
                'placeholder' => 'Select exam',
                'options' => $exams->mapWithKeys(function($exam) {
                    return [$exam->id => $exam->name.' ('.($exam->eduClass->name ?? 'N/A').')'];
                })->toArray()
            ],
            [
                'label' => 'Subject',
                'name' => 'subject_id',
                'type' => 'select',
                'placeholder' => 'Select subject',
                'options' => $subjects->mapWithKeys(function($subject){
                    return [$subject->id => $subject->name.' ('.$subject->eduClass->name.')'];
                })->toArray(),
            ],
            [
                'label' => 'Room',
                'name' => 'class_room_id',
                'type' => 'select',
                'placeholder' => 'Select room',
                'options' => $rooms->pluck('name', 'id')->toArray(),
            ],
            ['label' => 'Date', 'name' => 'exam_date', 'type' => 'date'],
            ['label' => 'Start Time', 'name' => 'start_time', 'type' => 'time'],
            ['label' => 'End Time', 'name' => 'end_time', 'type' => 'time'],

            ['label' => 'MCQ Marks', 'name' => 'mcq_marks', 'type' => 'number', 'default' => 0],
            ['label' => 'Writing Marks', 'name' => 'writing_marks', 'type' => 'number', 'default' => 0],
            ['label' => 'Practical Marks', 'name' => 'practical_marks', 'type' => 'number', 'default' => 0],
            ['label' => 'Attendance Marks', 'name' => 'attendance_marks', 'type' => 'number', 'default' => 0],
            ['label' => 'Pass Marks', 'name' => 'pass_marks', 'type' => 'number', 'default' => 40],
            ['label' => 'Total Marks', 'name' => 'total_marks', 'type' => 'number', 'default' => 100],
        ]" :form="$examSubject ?? null" cols="3" />




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
                'click' => 'window.location.href=`' . route('admin.academic.evaluation.exam_subject') . '`',
            ],
        ]" position="end"></x-button>

    </x-fieldset>

</form>
