<form action="@if($result){{ route('admin.academic.evaluation.results.update', $result->id) }}@else{{ route('admin.academic.evaluation.results.add') }}@endif" method="POST">
    @csrf

    <x-fieldset title="Exam Result">

        <x-input-form
            :fields="[
                [
                    'label' => 'Exam',
                    'name' => 'exam_id',
                    'type' => 'select',
                    'required' => true,
                    'options' => $exams->pluck('name', 'id')->toArray(),
                    'placeholder' => 'Select exam'
                ],

                [
                    'label' => 'Total Passed',
                    'name' => 'passed',
                    'type' => 'number',
                    'placeholder' => 'e.g. 40',
                    'required' => true
                ],

                [
                    'label' => 'Total Failed',
                    'name' => 'failed',
                    'type' => 'number',
                    'placeholder' => 'e.g. 12',
                    'required' => true
                ],

                [
                    'label' => 'Percentage / Grade',
                    'name' => 'percentage',
                    'type' => 'text',
                    'placeholder' => 'e.g. 82% or A+',
                    'required' => true
                ],

                [
                    'label' => 'Remarks',
                    'name' => 'remarks',
                    'type' => 'text',
                    'placeholder' => 'Overall performance summary'
                ],

                [
                    'label' => 'Status',
                    'name' => 'status',
                    'type' => 'select',
                    'options' => ['published' => 'Published', 'private' => 'Private'],
                    'default' => 'private'
                ],
            ]"
            :form="$result"
            cols="3"
        />

        <x-button :items="[
            ['label' => 'Cancel', 'type' => 'reset',
                'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800'],

            ['label' => 'Save', 'type' => 'submit',
                'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800'],

            ['label' => 'New', 'type' => 'button',
                'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800',
                'click' => 'window.location.href=`'.route('admin.academic.evaluation.results').'`']
        ]" position="end"></x-button>

    </x-fieldset>
</form>
