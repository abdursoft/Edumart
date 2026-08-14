<div class="rounded-md shadow-md min-h-[300px] bg-white p-2 relative">
    <div class="w-full flex items-center justify-center flex-col h-full">
        <div class="flex-items-center justify-center flex w-full">
            <div class="w-full flex items-center flex-col md:flex-row gap-3">
            <img src="{{ $profile->profile?->avatar }}" alt="{{ $profile?->profile?->first_name }}"
            class="!w-[90px] !h-[90px] rounded-md border-[1.4px] border-gray-300" />
            <div>
                <p>Name: <span class="text-gray-500 text-sm italic ml-2">{{$profile->student?->name}}</span> </p>
                <p>Class: <span class="text-gray-500 text-sm italic ml-2">{{$profile->student?->eduClass?->name}}</span> </p>
                <p>DOB: <span class="text-gray-500 text-sm italic ml-2">{{ date('F m, Y', strtotime($profile->profile?->date_of_birth)) }}</span></p>
            </div>
        </div>
        </div>
    </div>
</div>
