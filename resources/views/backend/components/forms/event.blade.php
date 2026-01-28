
{{editorScript('description')}}


<form action="@if($event){{ route('admin.information.event_calendar.update', $event->id) }}@else{{ route('admin.information.event_calendar.add') }}@endif" method="POST">
    @csrf

    <x-fieldset title="New Event">

        <x-input-form
            :fields="[
                [
                    'label' => 'Title',
                    'name' => 'title',
                    'type' => 'text',
                    'required' => true,
                    'placeholder' => 'Enter title here'
                ],

                [
                    'label' => 'Type',
                    'name' => 'type',
                    'type' => 'select',
                    'required' => true,
                    'options' => ['Holiday','Meeting','Exam','Workshop','Other'],
                    'default' => 'Event type',
                ],

                [
                    'label' => 'Location',
                    'name' => 'location',
                    'type' => 'text',
                    'required' => true,
                    'placeholder' => 'Event location'
                ],

                [
                    'label' => 'Start Date',
                    'name' => 'start_date',
                    'type' => 'date',
                    'placeholder' => 'e.g. 12',
                    'required' => true
                ],

                [
                    'label' => 'End Date',
                    'name' => 'end_date',
                    'type' => 'date',
                    'placeholder' => 'e.g. 12',
                    'required' => true
                ],

                [
                    'label' => 'Status',
                    'name' => 'status',
                    'type' => 'select',
                    'options' => [0 => 'Draft', 1 => 'Published'],
                    'default' => 'published',
                    'placeholder' => 'Select status'
                ],

                [
                    'label' => '',
                    'name' => '',
                    'type' => 'break',
                    'default' => 1,
                ],

                [
                    'label' => 'Description',
                    'name' => 'description',
                    'type' => 'textarea',
                    'placeholder' => 'Description content'
                ],
            ]"
            :form="$event"
            cols="1"
            span="1"
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
                'click' => 'window.location.href=`'.route('admin.information.event_calendar').'`']
        ]" position="end"></x-button>

    </x-fieldset>
</form>
