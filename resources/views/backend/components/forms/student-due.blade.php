<form action="@if($fee){{route('admin.finance.fees.student_due.update', ['id' => $fee['id']])}}@else{{route('admin.finance.fees.student_due.add')}}@endif" method="POST">

    @csrf
    <x-fieldset
    title="Student due management">

        <x-input-form
            :fields="[
                [
                    'label' => 'Select a head',
                    'name' => 'fee_head_id',
                    'type' => 'select',
                    'required' => true,
                    'options' => $heads
                ],

                [
                    'label' => 'Due date',
                    'name' => 'due_date',
                    'type' => 'date',
                    'required' => true,
                ],

                [
                    'label' => 'Select class',
                    'name' => 'edu_class_id',
                    'type' => 'select',
                    'required' => true,
                    'options' => $classes
                ],

                [
                    'label' => 'Select section',
                    'name' => 'edu_section_id',
                    'type' => 'select',
                    'required' => true,
                    'options' => []
                ],

                [
                    'label' => 'Select group',
                    'name' => 'edu_group_id',
                    'type' => 'select',
                    'required' => true,
                    'options' => []
                ],
            ]"
            :form="$fee"
            cols="3"
        />

        <div class="my-3 rounded-md p-3 hidden studentArea">
            <div class="flex items-center justify-between">
                <h4 class="text-lg">Select students</h4>
                <label for="selectAll" class="flex items-center gap-2"> <input type="checkbox" name="" value="1" id="selectAll"> Select all</label>
            </div>
            <div class="students w-full grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-2"></div>
        </div>



            <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Save', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
            ]" position="end"></x-button>

    </x-fieldset>

</form>

{{-- {!!$student!!} --}}
@if ($fee)
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const class_id = "{{$fee->edu_class_id}}";
            const section_id = "{{$fee->edu_section_id}}";
            const group_id = "{{$fee->edu_group_id}}";

            const section_url = `/admin/sections/${class_id}`;
            $.ajax({
                url: section_url,
                method: 'get',
                success: (response) => {
                    $("#edu_section_id").empty().append(new Option('Select a section',' ',true, true));
                    response.map((item) => {
                        const isSelected = item?.id == section_id;
                        $('#edu_section_id').append(new Option(item?.name, item?.id, isSelected,
                            isSelected));

                        const group_url = `/admin/groups/${section_id}`;
                        $.ajax({
                            url: group_url,
                            method: 'get',
                            success: (response) => {
                                $("#edu_group_id").empty().append(new Option('Select a group',' ',true, true));
                                response.map((item) => {
                                    const isSelected = item?.id == group_id;
                                    $('#edu_group_id').append(new Option(item?.name, item?.id, isSelected,
                                        isSelected));
                                })
                            }
                        })
                    })
                }
            })
        });
    </script>
@endif

<script>
    document.addEventListener('DOMContentLoaded', function () {
        $("#edu_class_id").on('change', (element) => {
            const id = element.target.value;
            const url = `/admin/sections/${id}`;

            $.ajax({
                url: url,
                method: 'get',
                success: (response) => {
                    $("#edu_section_id").empty().append(new Option('Select a section',' ',true, true));
                    response?.map((item) => {
                        $('#edu_section_id').append(new Option(item?.name, item?.id, true,
                            false));
                    })
                }
            })
        });

        $("#edu_section_id").on('change', (element) => {
            const id = element.target.value;
            const url = `/admin/groups/${id}`;

            $.ajax({
                url: url,
                method: 'get',
                success: (response) => {
                    $("#edu_group_id").empty().append(new Option('Select all group',' ',true, true));
                    response?.map((item) => {
                        $('#edu_group_id').append(new Option(item?.name, item?.id, true,
                            true));
                    })
                }
            })
        });

        $("#edu_group_id").on('change', function(){
            getStudents();
        });

        function getStudents(){
            const classID = $("#edu_class_id").val();
            const sectionID = $("#edu_section_id").val();
            const groupID = $("#edu_group_id").val();

            const student_url = `/admin/students/${classID}/${sectionID}/${groupID}`;
            $.ajax({
                url: student_url,
                method: 'get',
                success: (response) => {
                    $(".students").empty();
                    let students = '';
                    response?.map((item) => {
                        students += `<label  class="shadow-md rounded-md p-2 flex items-center gap-2 hover:shadow-lg cursor-pointer">
                            <input type="checkbox" name="students[]" class='studentCheckbox' value="${item.id}" id=""> <span>${item.name}</span>
                        </label>`;
                    });
                    $(".students").html(students);
                    $(".studentArea").addClass('hidden');
                    if(response.length > 0){
                        $(".studentArea").removeClass('hidden');
                    }
                    setEvent();
                }
            })
        }

        $("#selectAll").on('change', function(){
            const checked = $(this).is(':checked');
            $(".studentCheckbox").prop('checked', checked);
        })

        function setEvent(){
            $("input[name='students[]']").on('change', function () {
                console.log($(".studentCheckbox:checked").length, $(".studentCheckbox").length)
                $("#selectAll").prop(
                    'checked',
                    $(".studentCheckbox:checked").length === $(".studentCheckbox").length
                );
            });
        }
    });
</script>
