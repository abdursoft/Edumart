<form
    action="@if ($examFee) {{ route('admin.academic.evaluation.exam_fee.update', ['id' => $examFee['id']]) }}@else{{ route('admin.academic.evaluation.exam_fee.add') }} @endif"
    method="POST">

    <x-fieldset title="Exam Fee">

        <x-input-form :fields="[
            [
                'label' => 'Exam',
                'name' => 'exam_id',
                'type' => 'select',
                'required' => true,
                'placeholder' => 'Select Exam',
                'options' => $exams->mapWithKeys(function($exam) {
                    return [$exam->id => $exam->name.' ('.($exam->eduClass->name ?? 'N/A').')'];
                })->toArray()
            ],

            [
                'label' => 'Amount',
                'name' => 'amount',
                'type' => 'number',
                'required' => true,
                'step' => '0.01',
                'placeholder' => 'Base exam fee',
            ],
            [
                'label' => 'Late Fee',
                'name' => 'late_fee',
                'type' => 'number',
                'step' => '0.01',
                'required' => true,
                'placeholder' => 'Late fee (optional)',
            ],
            ['label' => 'Due Date', 'name' => 'due_date', 'type' => 'date'],
            [
                'label' => 'Status',
                'name' => 'status',
                'required' => true,
                'type' => 'select',
                'options' => ['Active' => 'Active', 'Inactive' => 'Inactive'],
            ],
        ]" :form="$examFee" cols="3" />




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
                'click' => 'window.location.href=`' . route('admin.academic.evaluation.exam_fee') . '`',
            ],
        ]" position="end"></x-button>

    </x-fieldset>

</form>
