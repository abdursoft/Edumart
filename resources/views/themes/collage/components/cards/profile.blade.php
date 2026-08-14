<!-- profile card -->
<div class="w-full bg-gray-200">
    <img src="{{$profile->avatar ?? ''}}" class="w-full h-[180px]" alt="{{$profile->first_name ?? ''}}" loading="lazy" />
    <div class="flex items-center justify-between px-2">
        <p>{{$profile?->first_name}}</p>
        <p>{{$profile?->user->designation->name}}</p>
    </div>
</div>
