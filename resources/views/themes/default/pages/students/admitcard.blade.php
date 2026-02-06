@extends(theme('layouts.profile'))

@section('title', 'Student Dashboard')

@section('content')

{{-- @include(theme('components.cards.profile_details')) --}}

<div class="min-h-screen bg-gray-100 p-6">

    <!-- Header -->
    <div class="flex items-center justify-between mb-6">
        <h1 class="text-2xl font-bold text-gray-800">Student Admit cards</h1>
        <a href="{{route('logout')}}" class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700">
            Signout
        </a>
    </div>

    <!-- Attendance -->
    <div class="bg-white p-6 rounded-xl shadow mt-6">
        <ul class="space-y-3 text-sm">
            @forelse($admits as $card)
                <li class="p-3 bg-yellow-50 border-l-4 border-yellow-400 flex items-center justify-between">
                    <p>{{ "{$card->exam->eduClass->name} {$card->exam->name} {$card->exam->year} start on {$card->exam->start_date}" }}</p>
                    <a target="_blank" href="{{ route('student.admit_cards.download', ['examCode' => $card->exam->code, 'admitCard' => $card->id]) }}" class="p-2 rounded-md bg-green-500 hover:bg-green-700 transition-all text-white text-sm">Download</a>
                </li>
            @empty
                <div class="flex items-center justify-center text-gray-400 text-xl md:text-2xl font-bold">You have no admit cards yet!</div>
            @endforelse
        </ul>
    </div>
</div>
@endsection
