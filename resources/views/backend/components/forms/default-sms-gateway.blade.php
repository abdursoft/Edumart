<!-- Set default sms gateway -->
<h1 class="text-lg md:text-xl font-semibold mb-3 text-gray-500">Set default sms gateway</h1>
<form action="{{route('admin.settings.sms.default')}}" method="POST" class="mb-6">
    @csrf
    <x-input-form
        :fields="[
            ['label' => 'Select Default SMS Gateway', 'name' => 'sms_method_id', 'type' => 'select', 'options' => $methods, 'default' => $default->sms_method_id ?? '']
        ]"
        :form="$default"
    />
    <x-button :items="[
        ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white']
    ]" position="end"></x-button>
</form>
