<form action="@if($collection){{route('admin.finance.fees.fee_heads.update', ['id' => $collection['id']])}}@else{{route('admin.finance.fees.fee_heads.add')}}@endif" method="POST">

    <x-fieldset
    title="Add collection">

        <x-input-form
            :fields="[
                [
                    'label' => 'Total Amount',
                    'name' => 'total_amount',
                    'type' => 'number',
                    'required' => true,
                    'placeholder' => 10500
                ],

                [
                    'label' => 'Paid Amount',
                    'name' => 'paid_amount',
                    'type' => 'number',
                    'required' => true,
                    'placeholder' => 10500
                ],

                [
                    'label' => 'Payment method',
                    'name' => 'payment_method',
                    'type' => 'select',
                    'required' => true,
                    'options' => ['Online', 'Cash', 'Check', 'Others']
                ],

                [
                    'label' => 'Payment note',
                    'name' => 'payment_note',
                    'type' => 'text',
                    'required' => false,
                    'placeholder' => 'Bkash 1500tk'
                ],
            ]"
            :form="$collection"
            cols="3"
        />



            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.administration.leave_management').'`']
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
