<form action="@if($department){{route('admin.academic.structure.departments.update', ['id' => $department['id']])}}@else{{route('admin.academic.structure.departments.add')}} @endif" method="POST">

    <x-fieldset
    title="Department">

        <x-input-form
            :fields="[
                ['label' => 'Full Name', 'name' => 'name', 'type' => 'text', 'required' => true, 'placeholder' => 'e.g. John Doe'],

                ['label' => 'Code', 'name' => 'code', 'type' => 'text', 'placeholder' => '2025CSE', 'required' => true],

                ['label' => 'Description', 'name' => 'description', 'type' => 'textarea', 'placeholder' => 'Department description'],
            ]"
            :form="$department"
            cols="2"
        />


            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.academic.structure.departments').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>
