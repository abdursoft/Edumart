<form action="@if($designation){{route('admin.academic.people.designations.edit', ['id' => $designation['id']])}}@else{{route('admin.academic.people.designations.add')}} @endif" method="POST">

    <x-fieldset
    title="Designation">

        <x-input-form
            :fields="[
                ['label' => 'Name', 'name' => 'name', 'type' => 'text', 'required' => true, 'placeholder' => 'e.g. Principal'],
                ['label' => 'Category', 'name' => 'category', 'type' => 'select', 'options' => ['Academic', 'Administrative', 'Governing', 'Support', 'Finance', 'Librarian', 'Staff'], 'placeholder' => 'Select category'],
                ['label' => 'Level', 'name' => 'level', 'type' => 'select', 'options' => ['Senior', 'Junior', 'Assistant', 'Co-assistant', 'Intern'], 'placeholder' => 'Select level'],
            ]"
            :form="$designation"
            cols="2"
        />

            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.academic.people.designations').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>
