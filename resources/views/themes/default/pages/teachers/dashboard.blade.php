@extends(theme('layouts.teacher'))

@section('title', 'Teacher Dashboard')

@section('content')

<div class="min-h-screen bg-gray-100 p-6">

<!-- Main Content -->
<main class="w-full">

    <!-- Stats -->
    <div class="grid grid-cols-2 md:grid-cols-3 gap-6 mb-8">
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Total Subjects</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{ count($subjects) }}</p>
                <a href="{{route('teacher.subjects')}}" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Assignments</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{count($assignments)}}</p>
                <a href="{{route('teacher.assignments')}}" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Pending Reviews</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">8</p>
                <a href="" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
    </div>

    <!-- Two Columns -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">

        <!-- Class Schedule -->
        <div class="lg:col-span-2 bg-white rounded-xl shadow p-6">
            <h3 class="text-xl font-semibold mb-4">Today's Classes</h3>
            <table class="w-full text-left stripe hover" id="todayClass">
                <thead>
                    <tr class="text-gray-500 border-b">
                        <th class="py-2">Class</th>
                        <th>Subject</th>
                        <th>Time</th>
                        <th>Room</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($routines as $key => $routine)
                     {{$routine->status}}
                        <tr>
                            <td class="py-2">{{$routine?->eduClass->name}}</td>
                            <td>{{$routine?->subject->name}}</td>
                            <td>{{date('H:i A', strtotime($routine?->start_time))}} - {{date('H:i A', strtotime($routine?->end_time))}}</td>
                            <td>{{$routine->classRoom->name}}</td>
                            <td>{{ (classRunning($routine?->start_time, $routine->end_time)) ? "Running" : "Schedule" }}</td>
                            <td>
                                @if($routine->status == 'Started')
                                <a href="{{route('teacher.attendance', ['sub' => $routine->subject->id, 'class' => $routine->eduClass->id])}}" class="bg-orange-400 text-sm text-white rounded-md shadow-md py-1 px-2">On going</a>
                                @elseif($routine->status == 'Upcoming')
                                <p class="bg-green-400 text-sm text-white rounded-md shadow-md py-1 px-2 text-center">Upcoming</p>
                                @else <p class="bg-slate-500 text-sm text-white rounded-md shadow-md py-1 px-2 text-center" p-data="{{$routine->status}}">Finished</p>@endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <!-- Announcements -->
        <div class="bg-white rounded-xl shadow p-6">
            <h3 class="text-xl font-semibold mb-4">Announcements</h3>
            <ul class="space-y-4">
                <li class="p-4 bg-gray-50 rounded">
                    <p class="font-medium">Staff Meeting</p>
                    <p class="text-sm text-gray-600">Friday at 3:00 PM</p>
                </li>
                <li class="p-4 bg-gray-50 rounded">
                    <p class="font-medium">Exam Schedule</p>
                    <p class="text-sm text-gray-600">Final exams start next week</p>
                </li>
            </ul>
        </div>
    </div>

</main>

    <!-- Notifications -->
    <div class="bg-white p-6 rounded-xl shadow mt-6">
        <h2 class="text-lg font-semibold mb-4">Notifications</h2>
        <ul class="space-y-3 text-sm">
            <li class="p-3 bg-yellow-50 border-l-4 border-yellow-400">Midterm exam starts on 20th March</li>
            <li class="p-3 bg-blue-50 border-l-4 border-blue-400">Assignment submission deadline tomorrow</li>
            <li class="p-3 bg-green-50 border-l-4 border-green-400">Fee payment successful</li>
        </ul>
    </div>

</div>
@endsection


@push('scripts')
	<script>
		document.addEventListener('DOMContentLoaded',function() {

			var table = $('#example').DataTable( {
					responsive: true,
                    dom:'<"tableTop"Bf>rt<"tableBottom"ip>'
				} )
				.columns.adjust();

            $('#todayClass').DataTable( {
					responsive: true,
                    dom:'<"tableTop"Bf>rt<"tableBottom"ip>'
				} )
				.columns.adjust();
		} );

	</script>
@endpush
