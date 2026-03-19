<form
    action="@if ($marksheet) {{ route('admin.academic.evaluation.mark_sheet.item.update', ['id' => $marksheet['id']]) }}@else{{ route('admin.academic.evaluation.mark_sheet.item.add',['id' => $exam_marksheet_id]) }}@endif"
    method="POST">

    @csrf
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

<script>
    const marksheet = "{{$exam_marksheet_id}}";
    document.addEventListener('DOMContentLoaded', function () {
        $("#subject_id").on('change', function(){
            const subject = $(this).val();
            fetchAttributes(subject);
        });

        function fetchAttributes(subject){

            const url = `/admin/exam-subject/${subject}/${marksheet}`;
            $.ajax({
                url: url,
                method:'get',
                success: (response) => {
                    $('label[for="mcq_marks"]').html(`MCQ Marks (<span class='text-sm text-red-600'>maximum ${response.mcq_marks ?? 0}</span>)`);
                    $('label[for="writing_marks"]').html(`Writing Marks (<span class='text-sm text-red-600'>maximum ${response.writing_marks ?? 0}</span>)`);
                    $('label[for="practical_marks"]').html(`Practical Marks (<span class='text-sm text-red-600'>maximum ${response.practical_marks ?? 0}</span>)`);
                    $('label[for="attendance_marks"]').html(`Attendance Marks (<span class='text-sm text-red-600'>maximum ${response.attendance_marks ?? 0}</span>)`);

                    @if(!$marksheet)
                        $('input[name="mcq_marks"]').prop('max', response.mcq_marks ?? 100).val(0);
                        $('input[name="writing_marks"]').prop('max', response.writing_marks ?? 100).val(0);
                        $('input[name="practical_marks"]').prop('max', response.practical_marks ?? 100).val(0);
                        $('input[name="attendance_marks"]').prop('max', response.attendance_marks ?? 100).val(0);
                    @endif
                }
            })
        }

        fetchAttributes($("#subject_id").val());
    })
</script>
