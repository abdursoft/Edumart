@extends(theme('layouts.teacher'))

@section('title', 'Teacher Dashboard')

@section('content')

    <div class="min-h-screen bg-gray-100 p-6">

        <form
            action="@if ($assignment) {{ route('admin.academic.activities.assignments.update', ['id' => $assignment['id']]) }}@else{{ route('admin.academic.activities.assignments.add') }} @endif"
            enctype="multipart/form-data" method="POST">

            <x-fieldset title="Assignment">

                <x-input-form :fields="[
                    [
                        'label' => 'Assignment Name',
                        'name' => 'title',
                        'type' => 'text',
                        'required' => true,
                        'placeholder' => 'e.g. Class execution assignment',
                    ],

                    [
                        'label' => 'Class',
                        'name' => 'edu_class_id',
                        'type' => 'select',
                        'required' => true,
                        'placeholder' => 'Select a class',
                        'options' => $classes->pluck('name', 'id')->toArray(),
                    ],

                    [
                        'label' => 'Select a subject',
                        'name' => 'subject_id',
                        'type' => 'select',
                        'required' => true,
                        'default' => $assignment->subject_id ?? null,
                        'options' => [],
                    ],

                    [
                        'label' => 'Status',
                        'name' => 'status',
                        'type' => 'select',
                        'required' => true,
                        'options' => ['Pending', 'Completed', 'Overdue'],
                        'default' => 'Pending',
                    ],

                    [
                        'label' => 'Start Date',
                        'name' => 'assigned_date',
                        'type' => 'date',
                        'placeholder' => 'Select start date',
                    ],

                    ['label' => 'End Date', 'name' => 'due_date', 'type' => 'date', 'placeholder' => 'Select end date'],

                    ['label' => 'Attach file', 'name' => 'attachment', 'type' => 'file'],

                    [
                        'label' => 'Description',
                        'name' => 'description',
                        'type' => 'textarea',
                        'placeholder' => 'Add any additional information...',
                    ],

                    [
                        'label' => 'Teacher id',
                        'name' => 'teacher_id',
                        'type' => 'hidden',
                        'required' => true,
                        'default' => $profile->id,
                    ],
                ]" :form="$assignment ?? null" cols="3" />




                <x-button style="margin-top:100px;" :items="[
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
                        'click' => 'window.location.href=`' . route('admin.academic.evaluation.exams') . '`',
                    ],
                ]" position="end"></x-button>

            </x-fieldset>

        </form>

        <script>
            document.addEventListener('DOMContentLoaded',function() {
                let clID = uri = null;
                $('#edu_class_id').change(function(key) {
                    clID = key.target.value;
                    uri = `{{ url('admin/get-subjects/') }}/${clID}`;

                    $.ajax({
                        url: uri,
                        method: 'get',
                        success: (data) => {
                            $("#subject_id").empty();
                            for (const key in data) {
                                const element = data[key];
                                $('#subject_id').append(new Option(element.name, element.id, true,
                                    true)).trigger('change');
                            }
                        }
                    })
                })

                @if ($assignment)
                    clID = `{{ $assignment->edu_class_id }}`;
                    uri = `{{ url('admin/get-subjects/') }}/${clID}`;
                    $.ajax({
                        url: uri,
                        method: 'get',
                        success: (data) => {
                            console.log(data);
                            $("#subject_id").empty();
                            for (const key in data) {
                                const element = data[key];
                                const isSubject = element.id == '{{ $assignment->subject_id }}' ? true :
                                    false;
                                $('#subject_id').append(new Option(element.name, element.id, isSubject,
                                    isSubject)).trigger('change');
                            }
                        }
                    })
                @endif
            })
        </script>

    </div>
@endsection
