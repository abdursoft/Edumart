<form action="@if($expense){{route('admin.finance.expenses.cost.update', ['id' => $expense['id']])}}@else{{route('admin.finance.expenses.cost.add')}}@endif" method="POST">

    <x-fieldset
    title="Add Expense">

        <x-input-form
            :fields="[
                [
                    'label' => 'Expense Head',
                    'name' => 'expense_head_id',
                    'type' => 'select',
                    'required' => true,
                    'options' => $heads,
                    'placeholder' => 'Select expense head'
                ],

                [
                    'label' => 'Amount',
                    'name' => 'amount',
                    'type' => 'number',
                    'required' => true,
                    'placeholder' => 10500
                ],

                [
                    'label' => 'Expense date',
                    'name' => 'expense_date',
                    'type' => 'date',
                    'required' => true,
                ],

                [
                    'label' => 'Description',
                    'name' => 'description',
                    'type' => 'textarea',
                    'required' => false,
                ],
            ]"
            :form="$expense"
            cols="1"
            span="1"
        />



            <x-button style="margin-top:120px" :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.finance.expenses.cost').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>
