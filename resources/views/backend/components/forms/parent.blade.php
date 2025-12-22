<form action="@if($parent){{route('admin.academic.people.guardians.update', ['id' => $parent['id']])}}@else{{route('admin.academic.people.guardians.add')}} @endif" method="POST">

    <x-fieldset
    title="Guardian">

        <x-input-form
            :fields="[
                [
                    'label' => 'Full Name',
                    'name' => 'name',
                    'type' => 'text',
                    'required' => true,
                    'placeholder' => 'e.g. John Doe'
                ],

                [
                    'label' => 'Email Address',
                    'name' => 'email',
                    'type' => 'email',
                    'placeholder' => 'john@example.com'
                ],

                [
                    'label' => 'Phone',
                    'name' => 'phone',
                    'type' => 'text',
                    'placeholder' => '01392511311',
                    'required' => true
                ],

                [
                    'label' => 'Full Address',
                    'name' => 'address',
                    'type' => 'text',
                    'required' => true,
                    'placeholder' => 'e.g. Street A-23, House-303, Mahiarpur, Rangpur'
                ],

                [
                    'label' => 'Password',
                    'name' => 'password',
                    'type' => 'password',
                    'required' => true,
                    'placeholder' => 'Enter a secure password'
                ],

                [
                    'label' => 'Login Permit',
                    'name' => 'login_permit',
                    'type' => 'select',
                    'options' => ['allowed' => 'Allowed', 'blocked' => 'Blocked'],
                    'default' => 'allowed'
                ],
            ]"
            :form="$parent"
            cols="3"
        />



            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.academic.people.guardians').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>
