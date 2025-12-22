
{{editorScript('description')}}


<form action="@if($menu){{ route('admin.menu.update', $menu->id) }}@else{{ route('admin.menu.create') }}@endif" method="POST">
    @csrf

    <x-fieldset title="Menu">

        <x-input-form
            :fields="[
                [
                    'label' => 'Menu Name',
                    'name' => 'name',
                    'type' => 'text',
                    'required' => true,
                    'placeholder' => 'Header'
                ],

                [
                    'label' => 'Location',
                    'name' => 'location',
                    'type' => 'select',
                    'options' => ['header' => 'Header', 'footer' => 'Footer', 'sidebar' => 'Sidebar'],
                    'default' => 'header',
                ],
                [
                    'label' => 'Status',
                    'name' => 'status',
                    'type' => 'select',
                    'options' => ['active' => 'Active', 'inactive' => 'Inactive'],
                    'default' => 'active',
                ],
            ]"
            :form="$menu"
            cols="3"
        />

        <x-button
        style="margin-top:110px !important;"
        :items="[
            ['label' => 'Cancel', 'type' => 'reset',
                'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800'],

            ['label' => 'Save', 'type' => 'submit',
                'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800'],

            ['label' => 'New', 'type' => 'button',
                'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800',
                'click' => 'window.location.href=`'.route('admin.menu.create').'`']
        ]" position="end"></x-button>

    </x-fieldset>
</form>
