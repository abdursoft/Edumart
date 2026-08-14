@extends(theme('layouts.profile'))

@section('title', 'Student Marksheet')

@section('content')

{{-- @include(theme('components.cards.profile_details')) --}}

<div class="min-h-screen bg-gray-100 p-6">

    <!-- Header -->
    <div class="flex items-center justify-between mb-6">
        <h1 class="text-2xl font-bold text-gray-800">Student Mark sheets</h1>
        <a href="{{route('logout')}}" class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700">
            Signout
        </a>
    </div>

    <!-- Attendance -->
    <div class="bg-white p-6 rounded-xl shadow mt-6">
        <ul class="space-y-3 text-sm">
            @forelse($marksheets as $marksheet)
                <li class="p-3 bg-yellow-50 border-l-4 border-yellow-400 flex items-center justify-between">
                    <p>{{ "{$marksheet->exam->eduClass->name} {$marksheet->exam->name} {$marksheet->exam->year} Grade {$marksheet->grade}" }} <span class="{{$marksheet->is_passed == '1' ? 'text-green-600' : 'text-red-600'}}">{{$marksheet->is_passed == '1' ? 'Passed' : 'Failed'}}</span></p>
                    <a target="_blank" href="{{route('student.marksheets.download',['id' => $marksheet->id])}}" class="p-2 rounded-md bg-green-500 hover:bg-green-700 transition-all text-white text-sm">Download</a>
                </li>
            @empty
                <div class="flex items-center justify-center text-gray-400 text-xl md:text-2xl font-bold">You have no mark sheets yet!</div>
            @endforelse
        </ul>
    </div>
</div>
@endsection
