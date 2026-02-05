<h1 class="text-lg md:text-xl font-semibold mb-3 text-gray-500">Select user to send message</h1>
<form action="{{route('admin.communication.sms.send')}}" method="POST" class="mb-6">
    @csrf
    <x-input-form
        :fields="[
            ['label' => 'Select Default SMS Gateway', 'name' => 'role', 'type' => 'select', 'options' => [
                'admin' => 'Admin',
                'student' => 'Student',
                'teacher' => 'Teacher',
                'staff' => 'Staff',
                'guardian' => 'Guardian',
                'user' => 'User',
                'all' => 'All Users',
                'custom' => 'Custom'
            ]],
            ['label' => 'Custom Number (Comma separated)', 'name' => 'custom_number', 'type' => 'text', 'default' => '', 'className' => 'custom-number-field'],
            ['label' => 'Subject', 'name' => 'subject', 'type' => 'text', 'default' => ''],
            ['label' => 'Message (max 150 characters)', 'name' => 'message', 'type' => 'textarea', 'default' => ''],
        ]"
        :form="$default"
        cols="2"
    />
    <x-button :items="[
        ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white']
    ]" position="end" style="margin-top:110px !important;"></x-button>
</form>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        $('select[name="role"]').on('change', function() {
            if ($(this).val() === 'custom') {
                $('.custom-number-field').show();
            } else {
                $('.custom-number-field').hide();
                $('#custom_number').val('');
            }
        }).trigger('change');
    });
</script>
