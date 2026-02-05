@extends('backend.layouts.app')

@section('title', 'Manage page')


@section('content')
    <div class="flex justify-between items-center mb-6">
        <h1 class="text-2xl font-bold">Roles & Permissions</h1>
        <a href="{{ route('admin.settings.roles.create') }}" class="bg-blue-600 text-white px-4 py-2 rounded">+ New Role</a>
    </div>

    {{-- Flash message --}}
    @if(session('success'))
        <div class="mb-4 p-4 bg-green-100 text-green-700 rounded">
            {{ session('success') }}
        </div>
    @endif

    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">

        {{-- Roles list --}}
        <div class="lg:col-span-2 bg-white rounded-xl shadow p-6">
            <h2 class="text-xl font-semibold mb-4">Roles</h2>
            <table class="w-full stripe hover" id="permissionList">
                <thead>
                    <tr class="text-gray-500 border-b">
                        <th class="py-2 text-left">Role</th>
                        <th>Permissions</th>
                        <th class="text-right">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($roles as $role)
                        <tr class="border-b">
                            <td class="py-2 font-medium">{{ $role->name }}</td>
                            <td class="text-sm text-gray-600">
                                {{ $role->permissions->pluck('name')->implode(', ') ?: '—' }}
                            </td>
                            <td class="text-right space-x-2">
                                <div class="w-full flex gap-2">
                                    <a href="{{ route('admin.settings.roles.edit', $role) }}" class="bg-green-600 text-white p-2 text-sm rounded-md shadow-md hover:bg-green-500">Edit</a>
                                    <form action="{{ route('admin.settings.roles.destroy', $role) }}" method="POST" class="inline">
                                        @csrf
                                        @method('DELETE')
                                        <button onclick="return confirm('Delete role?')" class="bg-red-600 text-white p-2 text-sm rounded-md shadow-md cursor-pointer hover:bg-red-400">Delete</button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        {{-- Permissions --}}
        <div class="bg-white rounded-xl shadow p-6">
            <h2 class="text-xl font-semibold mb-4">Permissions</h2>

            <form action="{{ route('admin.settings.permissions.store') }}" method="POST" class="flex gap-2 mb-4">
                @csrf
                <input name="name" placeholder="Permission name" class="border rounded px-3 py-2 w-full" required>
                <button class="bg-green-600 text-white px-4 rounded">Add</button>
            </form>

            <ul class="space-y-2 !max-h-[100vh] overflow-y-auto">
                @foreach($permissions as $permission)
                    <li class="flex justify-between items-center bg-gray-50 px-3 py-2 rounded">
                        <span>{{ $permission->name }}</span>
                        <form action="{{ route('admin.settings.permissions.destroy', $permission) }}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button onclick="return confirm('Delete permission?')" class="bg-red-400 hover:bg-red-600 text-white p-2 rounded-md shadow-md text-sm cursor-pointer">Remove</button>
                        </form>
                    </li>
                @endforeach
            </ul>
        </div>

    </div>
@endsection


@section('styles')
	 {{ tableStyle()}}
@endSection


@push('scripts')
    {{loadDataTable('permissionList')}}
@endpush
