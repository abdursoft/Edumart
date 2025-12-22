
{{editorScript('description')}}


<form action="@if($page){{ route('admin.page.create_page.update', $page->id) }}@else{{ route('admin.page.create_page.add') }}@endif" method="POST">
    @csrf

    <x-fieldset title="Page Information">

        <x-input-form
            :fields="[
                [
                    'label' => 'Page Title',
                    'name' => 'title',
                    'type' => 'text',
                    'required' => true,
                    'placeholder' => 'Home Page'
                ],

                [
                    'label' => 'URL Slug',
                    'name' => 'slug',
                    'type' => 'text',
                    'placeholder' => 'home-page',
                    'required' => true
                ],

                [
                    'label' => 'Meta title',
                    'name' => 'meta_title',
                    'type' => 'text',
                    'placeholder' => 'e.g. home page for seo',
                ],

                [
                    'label' => 'Meta description',
                    'name' => 'meta_description',
                    'type' => 'text',
                    'placeholder' => 'e.g. This is meta description for seo max 160 characters',
                ],

                [
                    'label' => 'Status',
                    'name' => 'status',
                    'type' => 'select',
                    'options' => ['draft' => 'Draft', 'published' => 'Published', 'archived' => 'Archived'],
                    'default' => 'published',
                    'placeholder' => 'Select status',
                    'required' => true
                ],

                [
                    'label' => '',
                    'name' => '',
                    'type' => 'break',
                    'default' => 1,
                ],

                [
                    'label' => 'Description',
                    'name' => 'content',
                    'type' => 'textarea',
                    'placeholder' => 'Description content'
                ],
            ]"
            :form="$page"
            cols="3"
        />

        <x-button
        style="margin-top:110px !important;"
        :items="[
            ['label' => 'Cancel', 'type' => 'reset',
                'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800'],

            ['label' => 'Save', 'type' => 'submit',
                'style' => 'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800'],

            ['label' => 'New', 'type' => 'button',
                'style' => 'bg-yellow-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-yellow-800',
                'click' => 'window.location.href=`'.route('admin.page.create_page').'`'],
            ['label' => 'Page list', 'type' => 'button',
                'style' => 'bg-gray-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-gray-800',
                'click' => 'window.location.href=`'.route('admin.page.manage_page').'`']
        ]" position="end"></x-button>

    </x-fieldset>
</form>
