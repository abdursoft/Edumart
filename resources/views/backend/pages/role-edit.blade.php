@extends('backend.layouts.app')

@section('title', 'Manage page')


@section('content')
<div class="bg-white p-6 rounded-xl shadow">
    <h2 class="text-xl font-semibold mb-4">Edit Role</h2>

    <form method="POST" action="{{ route('admin.settings.roles.update', $role) }}">
        @csrf
        @method('PUT')

        <div class="mb-4">
            <label class="block text-sm font-medium mb-1">Role Name</label>
            <input
                type="text"
                name="name"
                value="{{ old('name', $role->name) }}"
                class="w-full border rounded-lg px-3 py-2"
            />
        </div>

        <div class="mb-4">
            <label class="block text-sm font-medium mb-2">Permissions</label>
            <div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-2">
                @foreach($permissions as $permission)
                    <label class="flex items-center gap-2">
                        <input
                            type="checkbox"
                            name="permissions[]"
                            value="{{ $permission->name }}"
                            @checked(in_array($permission->name, $rolePermissions))
                        >
                        {{ $permission->name }}
                    </label>
                @endforeach
            </div>
        </div>

        <button class="bg-indigo-600 text-white px-4 py-2 rounded-lg">
            Update Role
        </button>
    </form>
</div>
@endsection
