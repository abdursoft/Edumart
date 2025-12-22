<form action="@if($marksheet){{route('admin.academic.evaluation.mark_sheet.update', ['id' => $marksheet['id']])}}@else{{route('admin.academic.evaluation.mark_sheet.add')}}@endif" method="POST">

    <x-fieldset
    title="Mark Sheet">

        <x-input-form
            :fields="[
                [
                    'label' => 'Exam',
                    'name' => 'exam_id',
                    'type' => 'select',
                    'required' => true,
                    'options' => $exams->mapWithKeys(function($exam){
                        return [$exam->id => $exam->name. ' ('.$exam->eduClass->name.')'];
                    })->toArray(),
                    'placeholder' => 'Select a exam'
                ],

                [
                    'label' => 'Student',
                    'name' => 'student_id',
                    'type' => 'select',
                    'required' => true,
                    'options' => [],
                    'placeholder' => 'Select a exam'
                ],

                [
                    'label' => 'Total marks',
                    'name' => 'total_marks_obtained',
                    'type' => 'number',
                    'placeholder' => '100',
                    'required' => true
                ],

                [
                    'label' => 'Full marks',
                    'name' => 'total_full_marks',
                    'type' => 'number',
                    'required' => true,
                    'placeholder' => 'e.g. 80'
                ],

                [
                    'label' => 'Percentage',
                    'name' => 'percentage',
                    'type' => 'number',
                    'required' => true,
                    'step' => '0.01',
                    'placeholder' => 'Enter the marks percentage'
                ],

                [
                    'label' => 'Grade',
                    'name' => 'grade',
                    'type' => 'select',
                    'options' => ['A', 'A+', 'A-', 'B', 'B+', 'B-', 'C', 'D', 'F'],
                    'default' => 'allowed'
                ],
                [
                    'label' => 'Remark',
                    'name' => 'remarks',
                    'type' => 'text',
                    'placeholder' => 'Math is poor, need improvement',
                ],
                [
                    'label' => 'Status',
                    'name' => 'status',
                    'type' => 'select',
                    'options' => ['Published' => 'Published', 'Draft' => 'Draft'],
                    'default' => 'Published'
                ],
                [
                    'label' => 'Pass status',
                    'name' => 'is_passed',
                    'type' => 'select',
                    'options' => ['1' => 'Passed', '0' => 'Failed'],
                    'default' => '1'
                ],
            ]"
            :form="$marksheet"
            cols="3"
        />



            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.academic.evaluation.mark_sheet').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>

<script>
    $("#exam_id").on('change', function(event){
        const id = event.target.value;
        $.ajax({
            url: `http://127.0.0.1:8000/admin/academic/evaluation/mark-sheet/${id}/student`,
            method:'get',
            success: (data) => {
                $("#student_id").empty();
                for (const key in data) {
                    const element = data[key];
                    $('#student_id').append(new Option(element, key, true, true)).trigger('change');
                }
            }
        })
    });
</script>
