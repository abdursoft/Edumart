<form action="@if($fee){{route('admin.finance.fees.fee_heads.update', ['id' => $fee['id']])}}@else{{route('admin.finance.fees.fee_heads.add')}}@endif" method="POST">

    <x-fieldset
    title="Student due management">

        <x-input-form
            :fields="[
                [
                    'label' => 'Select a head',
                    'name' => 'fee_head_id',
                    'type' => 'select',
                    'required' => true,
                    'options' => $heads
                ],

                [
                    'label' => 'Status',
                    'name' => 'status',
                    'type' => 'select',
                    'required' => true,
                    'options' => ['Due','Partial','Paid']
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
            :form="$fee"
            cols="3"
        />



            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.administration.leave_management').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>
