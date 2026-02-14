<form
    action="@if ($leave) {{ route('admin.administration.leave_management.update', ['id' => $leave['id']]) }}@else{{ route('admin.administration.leave_management.add') }} @endif"
    method="POST">

    <x-fieldset title="New leave">

        <x-input-form :fields="[
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
                'required' => true,
            ],

            [
                'label' => 'Reason',
                'name' => 'reason',
                'type' => 'text',
                'note' => 'Max 250 characters',
                'required' => false,
                'placeholder' => 'Wedding leave',
            ],
            [
                'label' => 'Select user',
                'name' => 'user_type',
                'type' => 'select',
                'options' => ['Administration', 'Student'],
            ],
            [
                'label' => 'Select Staff',
                'name' => 'user_id',
                'type' => 'select',
                'options' => $users,
                'className' => 'staff'
            ],
            [
                'label' => 'Select Student',
                'name' => 'student_id',
                'type' => 'select',
                'options' => $students,
                'className' => 'hidden student'
            ],
        ]" :form="$leave" cols="1" />



        <x-button :items="[
            [
                'label' => 'Cancel',
                'type' => 'reset',
                'style' =>
                    'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white',
            ],
            [
                'label' => 'Save',
                'type' => 'submit',
                'style' =>
                    'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white',
            ],
            [
                'label' => 'New',
                'type' => 'button',
                'style' =>
                    'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white',
                'click' => 'window.location.href=`' . route('admin.administration.leave_management') . '`',
            ],
        ]" position="end"></x-button>

    </x-fieldset>

</form>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        $("#user_type").on('change', function(event) {
            const tgValue = event.target.value;
            if(tgValue == 'Student'){
                $(".staff").addClass('hidden');
                $(".student").removeClass('hidden');
            }else{
                $(".staff").removeClass('hidden');
                $(".student").addClass('hidden');
            }
        });
    });
</script>
