<!-- staff attendance form -->
<div class="w-full p-4 rounded-md shadow-md">
    <h2 class="text-lg md:text-xl mb-4"></h2>

    <form action="@if(!$attendance){{route('admin.administration.attendance_staff.add')}}@else{{route('admin.administration.attendance_staff.update')}}@endif" method="post">
        @csrf
        @foreach($staffs as $key=>$staff)
            <x-fieldset :title="ucfirst($key)" css='my-3'>
                <div class="w-full my-4 grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-2">
                    @foreach($staff as $person)
                        <label  class="shadow-md rounded-md p-2 flex items-center gap-2 hover:shadow-lg cursor-pointer">
                            <input type="checkbox" name="users[]" value="{{$person->id}}" id="" @if(in_array($person->id, $attendance) || in_array($person->id, $leave)) checked @endif > <span>{{$person->name}}</span> @if(in_array($person->id, $leave)) <sup class="text-sm sup text-green-600 bg-green-100 rounded-md p-2">leaved</sup> @endif
                        </label>
                    @endforeach
                </div>
            </x-fieldset>
        @endforeach
        <x-button :items="[
                ['label' => 'Cancel', 'type' => 'reset', 'style' => 'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white'],
                ['label' => 'Submit', 'type' => 'submit', 'style' => 'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white'],
            ]" position="end"></x-button>
    </form>
</div>
