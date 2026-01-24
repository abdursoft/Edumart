<form action="@if($collection){{route('admin.finance.fees.fee_collection.update', ['id' => $collection['id']])}}@else{{route('admin.finance.fees.fee_collection.add')}}@endif" method="POST">

    <x-fieldset
    title="Add collection">

        <x-input-form
            :fields="[
                [
                    'label' => 'Invoice ID',
                    'name' => 'student_fee_id',
                    'type' => 'select',
                    'required' => true,
                    'options' => $invoices,
                    'placeholder' => 'No invoice ID'
                ],

                [
                    'label' => 'Paid Amount',
                    'name' => 'paid_amount',
                    'type' => 'number',
                    'required' => true,
                    'placeholder' => 10500,
                    'attributes' => [
                        'min' => 0,
                        'step' => 0.1
                    ]
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
            cols="1"
        />



            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.administration.leave_management').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>

<script>
    $(document).ready(function(){
        $("#student_fee_id").on('change', function(event){
            const id = event.target.value;
            $.ajax({
                url: `/admin/get-fee/${id}`,
                method:'get',
                success: (data) => {
                    $(".student_details").html(data.view);
                },
                error: (error) => {
                    $(".student_details").html('<div class="flex items-center justify-center w-full h-full text-slate-400 text-xl font-bold min-h-[50vh]">Select an invoice to collect payment!</div>');
                }
            })
        });
    })
</script>
