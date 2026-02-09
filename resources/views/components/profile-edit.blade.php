<div>
    <form action="" method="post" class="min-h-[80vh]">
        <x-fieldset title="Profile details">
            <x-input-form :fields="[
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
                    'height' => '100px',
                    'placeholder' => 'Additional notes',
                ],
            ]" :form="$profile" cols="3" />
        </x-fieldset>
    </form>
</div>
