<form action="@if($class){{route('admin.academic.structure.classes.update', ['id' => $class['id']])}}@else{{route('admin.academic.structure.classes.add')}} @endif" method="POST">

    @csrf
    <x-fieldset
    title="New Class">
        <x-input-form
            :fields="[
                ['label' => 'Class Name', 'name' => 'name', 'type' => 'text', 'required' => true, 'placeholder' => 'e.g. Class 5 or Grade 8'],

                ['label' => 'Order', 'name' => 'order', 'type' => 'number', 'placeholder' => 'e.g. 1'],

                ['label' => 'Capacity', 'name' => 'capacity', 'type' => 'number', 'placeholder' => 'e.g. 50'],

                ['label' => 'Total Students', 'name' => 'total', 'type' => 'number', 'placeholder' => 'e.g. 45'],

                ['label' => 'Department', 'name' => 'department_id', 'type' => 'select', 'options' => $departments->pluck('name','id')->toArray(), 'placeholder' => 'Select Department'],
            ]"
            :form="$class"
            cols="1"
        />




            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.academic.structure.classes').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>
