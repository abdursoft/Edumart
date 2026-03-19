<form action="@if($group){{route('admin.finance.fees.fee_group.update', ['id' => $group['id']])}}@else{{route('admin.finance.fees.fee_group.add')}}@endif" method="POST">

    @csrf
    <x-fieldset
    title="Add new group">

        <x-input-form
            :fields="[
                [
                    'label' => 'Group Name',
                    'name' => 'name',
                    'type' => 'text',
                    'required' => true,
                    'placeholder' => 'Admission fees'
                ],

                [
                    'label' => 'Description',
                    'name' => 'description',
                    'type' => 'textarea',
                    'required' => true,
                ],
            ]"
            cols="1"
            :form="$group"
        />



            <x-button style="margin-top: 120px" :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.finance.fees.fee_group').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>
