<form
    action="{{ route('admin.information.institute_info.update') }}"
    enctype="multipart/form-data"
    method="POST">

    <x-fieldset title="Site Information">

        <x-input-form :fields="[
            [
                'label' => 'Institute Name',
                'name' => 'site_name',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'e.g. John Doe',
            ],
            [
                'label' => 'Name on Bengali',
                'name' => 'name_bn',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'e.g. John Doe',
            ],
            [
                'label' => 'Institute Code',
                'name' => 'code',
                'type' => 'text',
                'placeholder' => 'e.g IN-2393803'
            ],
            [
                'label' => 'Gov. ID/License',
                'name' => 'gov_id',
                'type' => 'text',
                'placeholder' => 'e.g L-k93lks39slk'
            ],
            [
                'label' => 'Establish Date',
                'name' => 'establish_date',
                'type' => 'date',
            ],
            [
                'label' => 'Logo',
                'name' => 'logo',
                'type' => 'file',
            ],
            [
                'label' => 'Favicon',
                'name' => 'favicon',
                'type' => 'file',
            ],
            [
                'label' => 'Phone',
                'name' => 'contact_phone',
                'type' => 'text',
                'placeholder' => 'e.g. 01X00000000',
                'required' => true,
            ],
            [
                'label' => 'Email',
                'name' => 'contact_email',
                'type' => 'email',
                'placeholder' => 'info@abdursoft.com',
                'required' => true,
            ],
            [
                'label' => 'Site Theme',
                'name' => 'theme',
                'type' => 'select',
                'required' => true,
                'placeholder' => 'Select a class',
                'options' => [
                    'default' => 'Default',
                    'collage' => 'Collage',
                    'university' => 'University',
                ]
            ],
            [
                'label' => 'Postal Code',
                'name' => 'post',
                'type' => 'text',
                'required' => true,
                'placeholder' => '5460',
            ],

            [
                'label' => ADDRESS['division'],
                'name' => 'division_id',
                'type' => 'select',
                'options' => division()->pluck('name','id')->toArray(),
                'required' => true,
                'placeholder' => 'Jhon Doe'
            ],
            [
                'label' => ADDRESS['district'],
                'name' => 'district_id',
                'type' => 'select',
                'options' => [],
                'required' => true,
                'placeholder' => 'Jhon Doe'
            ],
            [
                'label' => ADDRESS['thana'],
                'name' => 'thana_id',
                'type' => 'select',
                'options' => [],
                'required' => true,
                'placeholder' => '01X-------XXX'
            ],
            [
                'label' => ADDRESS['union'],
                'name' => 'union_id',
                'type' => 'select',
                'options' => [],
                'required' => true,
                'placeholder' => 'Jhon Doe'
            ],
            [
                'label' => ADDRESS['address'],
                'name' => 'address',
                'type' => 'text',
                'required' => true,
            ],

        ]" :form="$site" cols="3" />



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
        ]" position="end"></x-button>

    </x-fieldset>

</form>


{{-- {!!$site!!} --}}
@if($site && $site->division_id)
<script>
    $(document).ready(function(){
        const division_id = "{{ $site->division_id }}";
        const district_id = "{{ $site->district_id }}";
        const thana_id = "{{ $site->thana_id }}";

        const division_url = `/admin/address/division/${division_id}`;
        $.ajax({
            url: division_url,
            method: 'get',
            success: (response) => {
                $("#district_id").empty();
                response?.district.map((item) => {
                    const isSelected = item?.id == district_id;
                    $('#district_id').append(new Option(item?.name, item?.id, isSelected, isSelected));
                })

                const district_url = `/admin/address/district/${district_id}`;
                $.ajax({
                    url: district_url,
                    method: 'get',
                    success: (response) => {
                        $("#thana_id").empty();
                        response?.thana.map((item) => {
                            const isSelected = item?.id == thana_id;
                            $('#thana_id').append(new Option(item?.name, item?.id, isSelected, isSelected));
                        })

                        const thana_url = `/admin/address/thana/${thana_id}`;
                        $.ajax({
                            url: thana_url,
                            method: 'get',
                            success: (response) => {
                                $("#union_id").empty();
                                response?.union.map((item) => {
                                    const isSelected = item?.id == "{{ $site->union_id }}";
                                    $('#union_id').append(new Option(item?.name, item?.id, isSelected, isSelected));
                                })
                            }
                        })
                    }
                })
            }
        })
    });
</script>
@endif

<script>
    $(document).ready(function(){
        $("#division_id").on('change', (element) => {
            const id = element.target.value;
            const url = `/admin/address/division/${id}`;

            $.ajax({
                url: url,
                method: 'get',
                success: (response) => {
                    $("#district_id").empty();
                    response?.district.map((item) => {
                        $('#district_id').append(new Option(item?.name, item?.id, true, true));
                    })
                }
            })
        })

        $("#district_id").on('change', (element) => {
            const id = element.target.value;
            const url = `/admin/address/district/${id}`;

            $.ajax({
                url: url,
                method: 'get',
                success: (response) => {
                    $("#thana_id").empty();
                    response?.thana.map((item) => {
                        $('#thana_id').append(new Option(item?.name, item?.id, true, true));
                    })
                }
            })
        })

        $("#thana_id").on('change', (element) => {
            const id = element.target.value;
            const url = `/admin/address/thana/${id}`;

            $.ajax({
                url: url,
                method: 'get',
                success: (response) => {
                    $("#union_id").empty();
                    response?.union.map((item) => {
                        $('#union_id').append(new Option(item?.name, item?.id, true, true));
                    })
                }
            })
        })
    });
</script>
