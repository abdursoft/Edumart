<form action="@if($result){{ route('admin.academic.evaluation.results.update', $result->id) }}@else{{ route('admin.academic.evaluation.results.add') }}@endif" method="POST">
    @csrf

    <x-fieldset title="Add Result">

        <x-input-form
            :fields="[
                [
                    'label' => 'Exam',
                    'name' => 'exam_id',
                    'type' => 'select',
                    'required' => true,
                    'options' => $exams->mapWithKeys(function($exam){
                        return [$exam->id => $exam->name. ' ('.$exam->eduClass->name.') session-'. $exam->session];
                    })->toArray(),
                    'placeholder' => 'Select exam'
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
            cols="1"
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
