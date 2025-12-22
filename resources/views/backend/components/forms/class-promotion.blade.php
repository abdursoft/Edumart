<form action="@if($promotion)
    {{ route('admin.academic.evaluation.promotion.update', ['id' => $promotion->id]) }}
@else
    {{ route('admin.academic.evaluation.promotion.add') }}
@endif" method="POST">

    @csrf

    <x-fieldset title="Class Promotion">

        <x-input-form
            :fields="[

                [
                    'label' => 'From Class',
                    'name'  => 'from_class_id',
                    'type'  => 'select',
                    'required' => true,
                    'options' => $classes->pluck('name','id')->toArray(),
                    'placeholder' => 'Select previous class'
                ],

                [
                    'label' => 'Student',
                    'name'  => 'student_id',
                    'type'  => 'select',
                    'required' => true,
                    'options' => [],
                    'placeholder' => 'Select a student'
                ],

                [
                    'label' => 'To Class',
                    'name'  => 'to_class_id',
                    'type'  => 'select',
                    'required' => true,
                    'options' => $classes->pluck('name','id')->toArray(),
                    'placeholder' => 'Select promoted class'
                ],

                [
                    'label' => 'Status',
                    'name' => 'status',
                    'type' => 'select',
                    'options' => [
                        'promoted' => 'Promoted',
                        'passed'   => 'Passed',
                        'failed'   => 'Failed',
                        'repeat'   => 'Repeat'
                    ],
                    'required' => true,
                    'default' => 'promoted'
                ],

                [
                    'label' => 'Remarks',
                    'name'  => 'remarks',
                    'type'  => 'text',
                    'placeholder' => 'Optional notes (e.g. Good result)'
                ],

                [
                    'label' => 'Promotion Date',
                    'name'  => 'promotion_date',
                    'type'  => 'date',
                ],
            ]"

            :form="$promotion"
            cols="3"
        />

        <x-button :items="[
            [
                'label' => 'Cancel',
                'type' => 'reset',
                'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'
            ],
            [
                'label' => 'Save',
                'type' => 'submit',
                'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'
            ],
            [
                'label' => 'New',
                'type' => 'button',
                'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white',
                'click' => 'window.location.href=`'.route('admin.academic.evaluation.promotion').'`'
            ]
        ]" position="end"></x-button>

    </x-fieldset>

</form>


<script>
    $(document).ready(function(){
        $("#from_class_id").change(function(){
            var class_id = $(this).val();
            $.ajax({
                url: "{{ url('admin/academic/evaluation/promotion') }}/" + class_id + "/student",
                method: "get",
                success: function(response){
                    var studentSelect = $("#student_id");
                    studentSelect.empty();
                    $.each(response, function(key, item){
                        $('#student_id').append(new Option(item?.name, item?.id, true, false));
                    });
                }
            });
        });
    });
</script>

@if($promotion)

<script>
    $(document).ready(function(){
        const class_id = {{ $promotion->from_class_id }};
        const student_id = {{ $promotion->student_id }};
        $.ajax({
            url: "{{ url('admin/academic/evaluation/promotion') }}/" + class_id + "/student",
            method: "get",
            success: function(response){
                var studentSelect = $("#student_id");
                studentSelect.empty();
                let isSelected = false
                $.each(response, function(key, item){
                    isSelected = item?.id == student_id ? true : false;
                    $('#student_id').append(new Option(item?.name, item?.id, isSelected, isSelected));
                });
            }
        });
    });
</script>
@endif
