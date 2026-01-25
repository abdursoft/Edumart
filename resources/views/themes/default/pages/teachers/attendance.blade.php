@extends(theme('layouts.teacher'))

@section('title', 'Student Attendance')

@section('content')

    <div class="min-h-screen bg-gray-100 p-6">

        <!-- see your attendance list -->
        <div class="bg-white rounded-xl shadow p-4">
            <!-- attendance timer and progress -->
            <x-count-down-timer start="{{$routine->start_time}}" end="{{$routine->end_time}}" />
            <div class="w-full grid grid-cols-1 md:grid-cols-2 gap-2">
                <div class="bg-gray-200 rounded-md p-3 shadow-md flex items-center justify-between">
                    <div class="flex items-center gap-2">
                        <p class="font-bold">Class</p>
                        <p class="italic">{{$class->name }}</p>
                    </div>
                    <div class="flex items-center gap-2">
                        <p class="font-bold">Subject</p>
                        <p class="italic">{{$subject->name }}</p>
                    </div>
                </div>
                <div class="bg-gray-200 rounded-md p-3 shadow-md flex items-center justify-between">
                    <div class="flex items-center gap-2">
                        <p class="font-bold">Teacher</p>
                        <p class="italic">{{$profile->name }}</p>
                    </div>
                    <div class="flex items-center gap-2 hidden md:block">
                        <p class="font-bold">Students</p>
                        <p class="italic">({{ count($students) }})</p>
                    </div>
                </div>
            </div>
            <p class="text-sm mt-[3rem]">Select present students</p>
            <form action="@if($attendance){{route('admin.academic.activities.attendance.update', ['id' => $attendance->id])}}@else{{route('admin.academic.activities.attendance.add')}}@endif" method="post">
                @csrf
                <input type="hidden" name="subject_id" value="{{$subject->id}}">
                <input type="hidden" name="teacher_id" value="{{$profile->id}}">
                <input type="hidden" name="edu_class_id" value="{{$class->id}}">
                <input type="hidden" name="class_room_id" value="{{$routine->class_room_id}}">
                <div class="w-full mt-4 grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-2">
                    @foreach($students as $student)
                        <label class="shadow-md rounded-md p-2 flex items-center gap-2 hover:shadow-lg cursor-pointer">
                            <input type="checkbox" name="students[]" value="{{$student->user->id}}" id=""> <img class="w-10 h-10 rounded-full" src="{{asset($student->avatar)}}"/> <span>{{$student->name}}</span>
                        </label>
                    @endforeach
                </div>
                <button class="mt-5 rounded-md shadow-md bg-green-500 hover:bg-green-700 text-white p-2">Submit</button>
            </form>
        </div>
    </div>
@endsection
