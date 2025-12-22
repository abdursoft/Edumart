<form
    action="@if ($student) {{ route('admin.academic.people.students.update', ['id' => $student['id']]) }}@else{{ route('admin.academic.people.students.add') }} @endif"
    method="POST">

    <x-fieldset title="Student">

        <x-input-form :fields="[
            [
                'label' => 'Full Name',
                'name' => 'name',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'e.g. John Doe',
            ],
            [
                'label' => 'Student ID',
                'name' => 'student_id',
                'type' => 'number',
                'placeholder' => 'e.g. 9329',
                'required' => true,
            ],
            [
                'label' => 'Age',
                'name' => 'age',
                'type' => 'number',
                'placeholder' => 'e.g. 09',
                'required' => true,
            ],
            [
                'label' => 'Phone',
                'name' => 'phone',
                'type' => 'text',
                'placeholder' => 'e.g. 01X00000000',
            ],
            [
                'label' => 'Guardian',
                'name' => 'parent_id',
                'type' => 'select',
                'placeholder' => 'Select a guardian',
                'required' => true,
                'options' => $parents->mapWithKeys(fn($p) => [$p->id => $p->name . ' (' . $p->phone . ')'])->toArray(),
            ],
            [
                'label' => 'Class',
                'name' => 'edu_class_id',
                'type' => 'select',
                'required' => true,
                'placeholder' => 'Select a class',
                'options' => $class->pluck('name', 'id')->toArray(),
            ],
            [
                'label' => 'Password',
                'name' => 'password',
                'type' => 'password',
                'required' => true,
                'placeholder' => 'Enter a secure password',
            ],
            [
                'label' => 'Login Permit',
                'name' => 'login_permit',
                'type' => 'select',
                'options' => ['allowed' => 'Allowed', 'blocked' => 'Blocked'],
                'default' => 'allowed',
            ],
            [
                'label' => '',
                'name' => '',
                'type' => 'break',
                'default' => 1,
            ],
            [
                'label' => '',
                'name' => '',
                'type' => 'title',
                'default' => 'Father Information',
            ],
            [
                'label' => '',
                'name' => '',
                'type' => 'break',
                'default' => 2
            ],
            [
                'label' => PARENTS['name_en'],
                'name' => 'fa_name_en',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'Jhon Doe'
            ],
            [
                'label' => PARENTS['name_bn'],
                'name' => 'fa_name_bn',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'Jhon Doe'
            ],
            [
                'label' => PARENTS['mobile'],
                'name' => 'fa_mobile',
                'type' => 'text',
                'required' => true,
                'placeholder' => '01X-------XXX'
            ],
            [
                'label' => PARENTS['nid'],
                'name' => 'fa_nid',
                'type' => 'text',
                'required' => true,
                'placeholder' => '8515XXXXXX12'
            ],
            [
                'label' => PARENTS['dob'],
                'name' => 'fa_dob',
                'type' => 'date',
                'required' => true,
            ],


            [
                'label' => '',
                'name' => '',
                'type' => 'break',
                'default' => 1,
            ],
            [
                'label' => '',
                'name' => '',
                'type' => 'title',
                'default' => 'Mother Information',
            ],
            [
                'label' => '',
                'name' => '',
                'type' => 'break',
                'default' => 2
            ],
            [
                'label' => PARENTS['name_en'],
                'name' => 'mo_name_en',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'Jhon Doe'
            ],
            [
                'label' => PARENTS['name_bn'],
                'name' => 'mo_name_bn',
                'type' => 'text',
                'required' => true,
                'placeholder' => 'Jhon Doe'
            ],
            [
                'label' => PARENTS['mobile'],
                'name' => 'mo_mobile',
                'type' => 'text',
                'required' => true,
                'placeholder' => '01X-------XXX'
            ],
            [
                'label' => PARENTS['nid'],
                'name' => 'mo_nid',
                'type' => 'text',
                'required' => true,
                'placeholder' => '8515XXXXXX12'
            ],
            [
                'label' => PARENTS['dob'],
                'name' => 'mo_dob',
                'type' => 'date',
                'required' => true,
            ],

            [
                'label' => '',
                'name' => '',
                'type' => 'break',
                'default' => 1,
            ],
            [
                'label' => '',
                'name' => '',
                'type' => 'title',
                'default' => 'Current Address',
            ],
            [
                'label' => '',
                'name' => '',
                'type' => 'break',
                'default' => 2
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
                'label' => ADDRESS['post'],
                'name' => 'post',
                'type' => 'text',
                'required' => true,
                'placeholder' => '8515XXXXXX12'
            ],
            [
                'label' => ADDRESS['address'],
                'name' => 'address',
                'type' => 'text',
                'required' => true,
            ],

        ]" :form="$student" cols="3" />



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
                'click' => 'window.location.href=`' . route('admin.academic.people.students') . '`',
            ],
        ]" position="end"></x-button>

    </x-fieldset>

</form>


{{-- {!!$student!!} --}}
@if($student && $student->division_id)
<script>
    $(document).ready(function(){
        const division_id = "{{ $student->division_id }}";
        const district_id = "{{ $student->district_id }}";
        const thana_id = "{{ $student->thana_id }}";

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
                                    const isSelected = item?.id == "{{ $student->union_id }}";
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
