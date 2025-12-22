<form action="@if($staff){{route('admin.academic.people.staff.update', ['id' => $staff['id']])}}@else{{route('admin.academic.people.staff.add')}} @endif" method="POST">

    <x-fieldset
    title="Staff">

        <x-input-form
            :fields="[
                ['label' => 'Full Name', 'name' => 'name', 'type' => 'text', 'required' => true, 'placeholder' => 'e.g. John Doe'],

                ['label' => 'Serial', 'name' => 'serial', 'type' => 'number', 'placeholder' => 'Auto-generated', 'readonly' => true],

                ['label' => 'Email Address', 'name' => 'email', 'type' => 'email', 'placeholder' => 'john@example.com'],

                ['label' => 'Password', 'name' => 'password', 'type' => 'password', 'placeholder' => 'Enter a secure password'],

                ['label' => 'Login Permit', 'name' => 'login_permit', 'type' => 'select', 'options' => ['allowed', 'blocked'], 'default' => 'allowed'],

                ['label' => 'Designation', 'name' => 'designation_id', 'type' => 'select', 'options' => $designations->pluck('name','id')->toArray(), 'placeholder' => 'Select designation'],
            ]"
            :form="$staff"
            cols="3"
        />

            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.academic.people.staff').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>
