<form action="{{route('admin.communication.email.send', ['id' => $contact['id'] ?? '' ])}}" method="POST">

    @csrf
    <x-fieldset
    title="Contact Replay">

        <x-input-form
            :fields="[
                ['label' => 'Full Name', 'name' => 'name', 'type' => 'text', 'required' => true, 'placeholder' => 'e.g. John Doe'],

                ['label' => 'Subject', 'name' => 'subject', 'type' => 'text', 'placeholder' => ''],
                ['label' => 'Email', 'name' => 'email', 'type' => 'email', 'placeholder' => ''],
                ['label' => 'Email', 'name' => 'id', 'type' => 'hidden', 'placeholder' => ''],

                ['label' => 'Description', 'name' => 'message', 'type' => 'textarea', 'placeholder' => 'Department description'],
            ]"
            :form="$contact"
            cols="1"
            span='1'
        />


            <x-button style="margin-top:120px;" :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.communication.email').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>
