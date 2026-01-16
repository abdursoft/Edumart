<form
    action="@if ($supplier)
                {{ route('admin.administration.suppliers.update', ['id' => $supplier['id']]) }}
            @else
                {{ route('admin.administration.suppliers.add') }}
            @endif"
    method="POST">

    <x-fieldset title="Supplier Details">

        <x-input-form
            :fields="[
                [
                    'label' => 'Supplier Name',
                    'name' => 'name',
                    'type' => 'text',
                    'required' => true,
                    'placeholder' => 'e.g. Rahim Traders',
                ],

                [
                    'label' => 'Designation',
                    'name' => 'designation',
                    'type' => 'text',
                    'required' => false,
                    'placeholder' => 'e.g. Manager / Owner',
                ],

                [
                    'label' => 'Phone Number',
                    'name' => 'phone',
                    'type' => 'text',
                    'required' => true,
                    'placeholder' => 'e.g. 017XXXXXXXX',
                ],

                [
                    'label' => 'Email Address',
                    'name' => 'email',
                    'type' => 'email',
                    'required' => false,
                    'placeholder' => 'e.g. supplier@email.com',
                ],

                [
                    'label' => 'Company Name',
                    'name' => 'company_name',
                    'type' => 'text',
                    'required' => false,
                    'placeholder' => 'e.g. ABC Corporation',
                ],

                [
                    'label' => 'Address',
                    'name' => 'address',
                    'type' => 'textarea',
                    'required' => true,
                    'placeholder' => 'Full address of supplier',
                ],
            ]"
            :form="$supplier"
            cols="3"
        />

        <x-button
            :items="[
                [
                    'label' => 'Cancel',
                    'type' => 'reset',
                    'style' =>
                        'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800',
                ],
                [
                    'label' => 'Save',
                    'type' => 'submit',
                    'style' =>
                        'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800',
                ],
                [
                    'label' => 'New',
                    'type' => 'button',
                    'style' =>
                        'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800',
                    'click' => 'window.location.href=`' . route('admin.administration.suppliers') . '`',
                ],
            ]"
            position="end"
        />

    </x-fieldset>

</form>
