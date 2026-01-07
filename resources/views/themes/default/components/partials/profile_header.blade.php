<div class="card rounded-md shadow-md min-h-[300px] bg-white p-2 relative">
        <div class="flex items-center justify-center flex-col h-full">
            <img src="" alt="{{ $profile?->student?->name }}"
                class="!w-[90px] !h-[90px] rounded-full border-[1.4px] border-gray-300 mt-[50px]" />
            <h3 class="text-xl mt-2 font-bold">{{ $profile?->student?->name ?? 'Student Name' }}</h3>
            <p class="text-base text-gray-600">{{ $profile?->student?->eduClass?->name }} Reg: {{ $profile?->student?->reg_number }}</p>
            <a to="{ name: 'dashboard' }"
                class="mt-7 w-[90%] rounded-md text-center p-3 border-gray-400 border-[1.8px] hover:bg-gray-100">Edit
                Profile</a>
        </div>
    </div>
