<!-- profile card -->
<div class="rounded-md shadow-md min-h-[300px] bg-white p-2">
    <div class="pt-3">
        <div class="w-full flex flex-col md:flex-row gap-2">
            <img src="{{asset($profile?->profile?->avatar)}}" alt="{{ $profile?->first_name }}"
                class="!w-[120px] !h-[120px] border-[1.4px] border-gray-300" />
            <div>
                <h3 class="text-xl mt-2 font-bold">Name: <span class="italic">{{ $profile?->profile?->first_name }}
                        {{ $profile->profile->last_name ?? 'N/A' }}</span></h3>
                <p class="text-base text-gray-600">Serial ID: {{ $profile->serial }}</p>
                <p class="text-base text-gray-600">Email: {{ $profile->email }}</p>
                <p class="text-base text-gray-600">Phone: {{ $profile?->profile?->phone }}</p>
                <p class="text-base text-gray-600">Children: {{ $profile->children->count() }}</p>
            </div>
        </div>
    </div>
    <div class="mt-15 w-full">
        <a href="{{ route('profile') }}"
            class="p-3 rounded-[14px] border-gray-300 text-center !w-full border-1 hover:bg-slate-600 hover:text-white block">Edit
            profile</a>
    </div>
    <!-- Header -->
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
