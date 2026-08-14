<div class="card rounded-md shadow-md min-h-[300px] bg-white p-2 relative">
    <div class="flex items-center justify-center flex-col h-full">
        <img src="{{ asset($profile->student->avatar ?? '') }}" alt="{{ $profile?->student?->name }}"
            class="!w-[90px] !h-[90px] rounded-full border-[1.4px] border-gray-300 mt-[50px]" />
        <h3 class="text-xl mt-2 font-bold">{{ $profile?->student?->name ?? 'Student Name' }}</h3>
        <p class="text-base text-gray-600">{{ $profile?->student?->eduClass?->name }} Reg:
            {{ $profile?->student?->reg_number }}</p>
        <div class="flex items-center justify-between mb-6 mt-3">
            <a href="{{ route($profile->role . '.dashboard') }}"
                class="px-2 py-1 bg-green-400 rounded-lg hover:bg-green-500">
                Dashboard
            </a>
            <a href="{{ route('logout') }}" class="px-2 py-1 bg-red-400 text-white rounded-lg hover:bg-red-700">
                Signout
            </a>
        </div>
    </div>
</div>
