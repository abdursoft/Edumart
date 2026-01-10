<div class="card rounded-md shadow-md min-h-[300px] bg-white p-2 relative">
    <div class="flex flex-col md:flex-row gap-2 h-full pt-3">
        <img src="" alt="{{ $profile?->first_name }}"
            class="!w-[120px] !h-[120px] border-[1.4px] border-gray-300" />
        <div>
            <h3 class="text-xl mt-2 font-bold">Name: <span class="italic">{{$profile->profile->first_name}} {{$profile->profile->last_name}}</span></h3>
            <p>Designation: {{$profile?->designation?->name}}</p>
            <p class="text-base text-gray-600">Serial ID: {{$profile->serial}}</p>
            <p>Email: {{$profile->email}}</p>
        </div>
    </div>
</div>
