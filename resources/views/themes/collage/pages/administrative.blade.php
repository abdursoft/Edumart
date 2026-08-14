@extends(theme('layouts.app'))
@section('title', 'Administrative View')

@section('content')
    <div class="w-full flex itmes-center justify-center">
        <div class="mx-auto w-full max-w-7xl px-2 py-5">
            <h1 class="text-xl md:text-2xl border-b border-gray-200">{{ ucfirst($role) }} list</h1>
            <div
                class="w-full {{ count($persons) > 0 ? 'grid' : '' }} grid-cols-1 md:grid-cols-3 lg:grid-cols-4 2xl:grid-cols-5 gap-2 my-2 py-10 px-2 md:px-5">
                @forelse($persons as $person)
                    @if (!empty($person->profile))
                        <div class="w-ful h-[280px] rounded-md overflow-hidden shadow-md">
                            <img src="{{ asset($person->profile?->avatar) }}" alt="{{ $person->first_name ?? '' }}"
                                class="w-full h-[180px]">
                            <h2 class="text-xl">{{ $person->profile?->first_name . ' ' . $person->profile?->last_name }} <small
                                    class="text-sm">({{ ucfirst($person->role) }})</small></h2>
                            <p class="text-sm text-gray-600">Department : {{ $person->major ?? '--' }}</p>
                            <p class="text-sm text-gray-600">Designation : {{ $person->designation->name ?? '--' }}</p>
                            <p class="text-sm text-gray-600">Contact : {{ $person->email }}</p>
                        </div>
                    @endif
                @empty
                    <div class="text-center flex items-center justify-center text-gray-400 w-full min-h-[400px]">
                        <h1 class="text-xl md:text-2xl font-bold">No persons found, according the searching role!</h1>
                    </div>
                @endforelse
            </div>
            <!-- pagination -->
            <div class="w-full mt-2 text-center">
                @if ($persons->hasPages())
                    <div class="mt-6 px-2 pb-5">
                        {{ $persons->links() }}
                    </div>
                @endif
            </div>
        </div>
    </div>
@endsection
