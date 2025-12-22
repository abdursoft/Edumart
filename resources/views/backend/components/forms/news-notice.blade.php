
{{editorScript('description')}}


<form action="@if($notice){{ route('admin.information.notice_board.update', $notice->id) }}@else{{ route('admin.information.notice_board.add') }}@endif" method="POST">
    @csrf

    <x-fieldset title="Notice Information">

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
                    'type' => 'hidden',
                    'default' => 'notice',
                ],

                [
                    'label' => 'Publish Date',
                    'name' => 'publish_date',
                    'type' => 'date',
                    'placeholder' => 'e.g. 12',
                    'required' => true
                ],

                [
                    'label' => 'File Attachment',
                    'name' => 'attachment',
                    'type' => 'file',
                ],

                [
                    'label' => 'Status',
                    'name' => 'status',
                    'type' => 'select',
                    'options' => ['draft' => 'Draft', 'published' => 'Published'],
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
            :form="$notice"
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
                'click' => 'window.location.href=`'.route('admin.information.notice_board').'`']
        ]" position="end"></x-button>

    </x-fieldset>
</form>