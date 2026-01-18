<form action="@if($leave){{route('admin.administration.leave_management.update', ['id' => $leave['id']])}}@else{{route('admin.administration.leave_management.add')}}@endif" method="POST">

    <x-fieldset
    title="Leave management">

        <x-input-form
            :fields="[
                [
                    'label' => 'Start Date',
                    'name' => 'start_date',
                    'type' => 'date',
                    'required' => true,
                ],

                [
                    'label' => 'End date',
                    'name' => 'end_date',
                    'type' => 'date',
                    'required' => true
                ],

                [
                    'label' => 'Reason',
                    'name' => 'reason',
                    'type' => 'text',
                    'required' => false,
                ],
                [
                    'label' => 'Select Staff',
                    'name' => 'user_id',
                    'type' => 'select',
                    'options' => $users,
                ],
            ]"
            :form="$leave"
            cols="3"
        />



            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
                ['label' => 'New', 'type' => 'button', 'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white', 'click' => 'window.location.href=`'.route('admin.administration.leave_management').'`']
            ]" position="end"></x-button>

    </x-fieldset>

</form>

<script>
    $("#exam_id").on('change', function(event){
        const id = event.target.value;
        $.ajax({
            url: `http://127.0.0.1:8000/admin/academic/evaluation/mark-sheet/${id}/student`,
            method:'get',
            success: (data) => {
                $("#student_id").empty();
                for (const key in data) {
                    const element = data[key];
                    $('#student_id').append(new Option(element, key, true, true)).trigger('change');
                }
            }
        })
    });
</script>
