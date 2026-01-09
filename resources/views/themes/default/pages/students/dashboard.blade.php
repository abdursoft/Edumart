@extends(theme('layouts.profile'))

@section('title', 'Student Dashboard')

@section('content')

{{-- @include(theme('components.cards.profile_details')) --}}

<div class="min-h-screen bg-gray-100 p-6">

    <!-- Header -->
    <div class="flex items-center justify-between mb-6">
        <h1 class="text-2xl font-bold text-gray-800">Student Dashboard</h1>
        <button class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700">
            Signout
        </button>
    </div>

    <!-- Top Cards -->
    <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-4 mb-6">
        <div class="bg-white p-4 rounded-xl shadow">
            <p class="text-sm text-gray-500">Attendance</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$attendance['percentage']}}%</p>
                <a href="" class="p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-4 rounded-xl shadow">
            <p class="text-sm text-gray-500">Invoice</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$invoices->count()}}</p>
                <a href="" class="p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-4 rounded-xl shadow">
            <p class="text-sm text-gray-500">Admit Cards</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$admits->count()}}</p>
                <a href="{{route('student.admit_cards')}}" class="p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-4 rounded-xl shadow">
            <p class="text-sm text-gray-500">Marksheet</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$marksheets->count()}}</p>
                <a href="{{route('student.marksheets')}}" class="p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-4 rounded-xl shadow">
            <p class="text-sm text-gray-500">Certificate</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$certificates->count()}}</p>
                <a href="{{route('student.certificates')}}" class="p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
    </div>

    <!-- Profile & Progress -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">

        <!-- Profile Card -->
        <div class="bg-white p-6 rounded-xl shadow">
            <div class="flex items-center space-x-4">
                <img src="" class="rounded-full" alt="Profile">
                <div>
                    <h2 class="text-lg font-semibold">{{$student?->name}}</h2>
                    <p class="text-sm text-gray-500">Student ID: {{$student?->reg_number}}</p>
                </div>
            </div>

            <div class="mt-4 space-y-2 text-sm">
                <p><span class="font-medium">Roll:</span> {{ $student?->class_roll }}</p>
                <p><span class="font-medium">Class:</span> {{$student?->eduClass->name}}</p>
                <p><span class="font-medium">Department:</span> {{$student?->eduClass?->department?->name ?? 'N/A'}}</p>
                <p><span class="font-medium">Login Permission:</span> <span class="{{ $profile->login_permit == 'allowed' ? 'text-green-600 ' : 'text-red-600 ' }}">{{ $profile->login_permit == 'allowed' ? 'Active' : 'Inactive' }}</span></p>
            </div>
        </div>

        <!-- Academic Progress -->
        <div class="bg-white p-6 rounded-xl shadow lg:col-span-2">
            <h2 class="text-lg font-semibold mb-4">Today's class</h2>

            <div class="space-y-4">
                @foreach($routines as $routine)
                    <div>
                        <div class="flex gap-3 text-sm mb-1">
                            <span>{{ $routine->subject->name }}</span>
                            <span class="text-gray-400">Start {{ date('H:i A', strtotime($routine->start_time)) }} | End {{ date('H:i A', strtotime($routine->end_time)) }}</span>
                        </div>
                        <div class="w-full flex items-center gap-3">
                            <p class="text-gray-500">Teacher <span class="italic font-semibold text-sm">{{ $routine->subject->teacher->name }}</span></p>
                            <p class="text-gray-500 text-sm font-semibold">| {{ $routine->classRoom?->name }} ({{ $routine->classRoom?->code }})</p>
                            <p class="text-yellow-500 hidden md:block text-sm font-semibold">{{ $routine->classRoom?->location }}</p>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>

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
