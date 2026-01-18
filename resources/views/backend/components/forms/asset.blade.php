<form
    action="@if ($asset)
                {{ route('admin.administration.assets.update', $asset->id) }}
            @else
                {{ route('admin.administration.assets.add') }}
            @endif"
    method="POST">

    <x-fieldset title="Asset Details">

        <x-input-form
            :fields="[
                [
                    'label' => 'Asset Name',
                    'name' => 'name',
                    'type' => 'text',
                    'required' => true,
                    'placeholder' => 'e.g. Office Chair',
                ],
                [
                    'label' => 'Category',
                    'name' => 'category',
                    'type' => 'text',
                    'required' => false,
                    'placeholder' => 'e.g. Furniture',
                ],
                [
                    'label' => 'Supplier',
                    'name' => 'supplier_id',
                    'type' => 'select',
                    'required' => true,
                    'options' => $suppliers->mapWithKeys(function($supplier){
                        return [$supplier->id => $supplier->name.' ('.$supplier->company_name.')'];
                    })->toArray()
                ],
                [
                    'label' => 'Price',
                    'name' => 'price',
                    'type' => 'number',
                    'required' => true,
                    'placeholder' => '0.00',
                ],
                [
                    'label' => 'Advance Amount',
                    'name' => 'advance_amount',
                    'type' => 'number',
                    'required' => false,
                    'placeholder' => '0.00',
                ],
                [
                    'label' => 'Due Amount',
                    'name' => 'due_amount',
                    'type' => 'number',
                    'required' => true,
                    'placeholder' => '0.00',
                ],
                [
                    'label' => 'Payment Method',
                    'name' => 'payment_method',
                    'type' => 'select',
                    'options' => [
                        'cash' => 'Cash',
                        'check' => 'Check',
                        'online' => 'Online',
                        'exchange' => 'Exchange',
                    ],
                ],
                [
                    'label' => 'Status',
                    'name' => 'status',
                    'type' => 'select',
                    'options' => [
                        'pending' => 'Pending',
                        'accepted' => 'Accepted',
                        'returned' => 'Returned',
                        'canceled' => 'Canceled',
                    ],
                ],
                [
                    'label' => 'Note',
                    'name' => 'note',
                    'type' => 'textarea',
                    'required' => false,
                    'placeholder' => 'Additional notes',
                ],
            ]"
            :form="$asset"
            cols="3"
        />

        <x-button
            style="margin-top: 100px;"
            :items="[
                [
                    'label' => 'Cancel',
                    'type' => 'reset',
                    'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 hover:bg-slate-800',
                ],
                [
                    'label' => 'Save',
                    'type' => 'submit',
                    'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 hover:bg-teal-800',
                ],
                [
                    'label' => 'New',
                    'type' => 'button',
                    'style' => 'bg-green-500 text-white rounded-md px-3 py-2 hover:bg-green-800',
                    'click' => 'window.location.href=`' . route('admin.administration.assets') . '`',
                ],
            ]"
            position="end"
        />

    </x-fieldset>
</form>
