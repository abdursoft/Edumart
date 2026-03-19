@extends(theme('layouts.teacher'))
@section('title', 'Profile management')

@section('content')
<div class="max-w-6xl mx-auto p-6 bg-white rounded-lg shadow">
    <h2 class="text-xl font-semibold mb-6">
        {{ isset($profileData) ? 'Update Profile' : 'Create Profile' }}
    </h2>

    <form
        action="{{ isset($profileData) ? route('profile.update', $profileData->id) : route('profile.add') }}"
        method="POST"
        enctype="multipart/form-data"
        class="space-y-6">

        @csrf

        {{-- Avatar --}}
        <div>
            <label class="block text-sm font-medium mb-1">Avatar</label>
            <input type="file" name="avatar"
                   class="w-full border rounded px-3 py-2">
            @isset($profileData->avatar)
                <img src="{{ asset($profileData->avatar) }}"
                     class="h-20 w-20 mt-2 rounded-full object-cover">
            @endisset
        </div>

        {{-- Name --}}
        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
                <label class="block text-sm font-medium mb-1">First Name</label>
                <input type="text" name="first_name"
                       value="{{ old('first_name', $profileData->first_name ?? '') }}"
                       placeholder="First name"
                       class="w-full border rounded px-3 py-2">
            </div>

            <div>
                <label class="block text-sm font-medium mb-1">Last Name</label>
                <input type="text" name="last_name"
                       value="{{ old('last_name', $profileData->last_name ?? '') }}"
                       placeholder="Last name"
                       class="w-full border rounded px-3 py-2">
            </div>
        </div>

        {{-- Contact --}}
        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
                <label class="block text-sm font-medium mb-1">Phone</label>
                <input type="text" name="phone"
                       value="{{ old('phone', $profileData->phone ?? '') }}"
                       placeholder="018xxxxxxxx"
                       class="w-full border rounded px-3 py-2">
            </div>

            <div>
                <label class="block text-sm font-medium mb-1">Gender</label>
                <select name="gender" class="w-full border rounded px-3 py-2">
                    <option value="">Select</option>
                    <option value="male" @selected(old('gender', $profileData->gender ?? '')=='male')>Male</option>
                    <option value="female" @selected(old('gender', $profileData->gender ?? '')=='female')>Female</option>
                    <option value="other" @selected(old('gender', $profileData->gender ?? '')=='other')>Other</option>
                </select>
            </div>
        </div>

        {{-- DOB --}}
        <div>
            <label class="block text-sm font-medium mb-1">Date of Birth</label>
            <input type="date" name="date_of_birth"
                   value="{{ old('date_of_birth', $profileData->date_of_birth ?? '') }}"
                   class="w-full border rounded px-3 py-2">
        </div>

        {{-- Address --}}
        <div>
            <label class="block text-sm font-medium mb-1">Address</label>
            <textarea name="address"
                      class="w-full border rounded px-3 py-2"
                      placeholder="eg. Rangpur, Dhaka, Bangladesh"
                      rows="3">{{ old('address', $profileData->address ?? '') }}</textarea>
        </div>

        {{-- Location --}}
        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
                <label class="block text-sm font-medium mb-1">Village</label>
                <input type="text" name="village"
                        placeholder="eg. Mahiarpur"
                       value="{{ old('village', $profileData->village ?? '') }}"
                       class="w-full border rounded px-3 py-2">
            </div>

            <div>
                <label class="block text-sm font-medium mb-1">Post</label>
                <input type="text" name="post"
                        placeholder="5460"
                       value="{{ old('post', $profileData->post ?? '') }}"
                       class="w-full border rounded px-3 py-2">
            </div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
            <div>
                <label class="block text-sm font-medium mb-1">City</label>
                <input type="text" name="city"
                        placeholder="Rangpur"
                       value="{{ old('city', $profileData->city ?? '') }}"
                       class="w-full border rounded px-3 py-2">
            </div>

            <div>
                <label class="block text-sm font-medium mb-1">State</label>
                <input type="text" name="state"
                        placeholder="Rangpur"
                       value="{{ old('state', $profileData->state ?? '') }}"
                       class="w-full border rounded px-3 py-2">
            </div>

            <div>
                <label class="block text-sm font-medium mb-1">Country</label>
                <input type="text" name="country"
                        placeholder="Bangladesh"
                       value="{{ old('country', $profileData->country ?? '') }}"
                       class="w-full border rounded px-3 py-2">
            </div>
        </div>

        {{-- user profile id  --}}
        <input type="hidden" name="user_id" value="{{ $profile->id ?? '' }}">

        {{-- Submit --}}
        <div class="text-right">
            <button type="submit"
                    class="px-6 py-2 bg-blue-600 text-white rounded hover:bg-blue-700">
                {{ isset($profileData) ? 'Update' : 'Save' }}
            </button>
        </div>

    </form>
</div>
@endsection
