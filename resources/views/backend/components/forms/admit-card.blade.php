<form action="@if($admitCard){{route('admin.academic.evaluation.admit_cards.update', ['id' => $admitCard['id']])}}@else{{route('admin.academic.evaluation.admit_cards.add')}} @endif" method="POST">

    <x-fieldset
    title="Admit card">
        <x-input-form
            :fields="[
                ['label' => 'Exam', 'name' => 'exam_id', 'type' => 'select', 'placeholder' => 'Select Exam', 'options' => $exams->pluck('name', 'id')->toArray()],

                ['label' => 'Issue Date', 'name' => 'issue_date', 'type' => 'date', 'placeholder' => 'Select Issue Date'],

                ['label' => 'Status', 'name' => 'status', 'type' => 'select', 'options' => ['Issued', 'Pending', 'Canceled'], 'default' => 'Issued'],
            ]"
            :form="$admitCard"
            cols="3"
        />





            <x-button :items="[
                ['label' => 'Generate', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white']
            ]" position="end"></x-button>

    </x-fieldset>

</form>
