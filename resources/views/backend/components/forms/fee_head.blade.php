<form action="@if($head){{route('admin.finance.fees.fee_heads.update', ['id' => $head['id']])}}@else{{route('admin.finance.fees.fee_heads.add')}}@endif" method="POST">

    <x-fieldset
    title="Add new head">

        <x-input-form
            :fields="[
                [
                    'label' => 'Head Name',
                    'name' => 'name',
                    'type' => 'text',
                    'required' => true,
                    'placeholder' => 'Fee head name'
                ],

                [
                    'label' => 'Amount',
                    'name' => 'amount',
                    'type' => 'number',
                    'required' => true,
                    'placeholder' => 10500
                ],

                [
                    'label' => 'IS Recurring',
                    'name' => 'is_recurring',
                    'type' => 'select',
                    'options' => ['Yes','No'],
                    'required' => true,
                ],
                [
                    'label' => 'Fee Group',
                    'name' => 'fee_group_id',
                    'type' => 'select',
                    'options' => $groups,
                    'placeholder' => 'Select a group',
                    'required' => false,
                ]
            ]"
            :form="$head"
            cols="1"
        />



            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.finance.fees.fee_heads').'`']
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
