<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Permission;
use Illuminate\Http\Request;

class PermissionController extends Controller
{
    // List all permissions
    public function index()
    {
        return Permission::all();
    }

    // Store a new permission
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:permissions,name',
            'group' => 'nullable|string',
        ]);

        $permission = Permission::create($request->only('name', 'group'));

        return response()->json($permission, 201);
    }

    // Show a single permission
    public function show(Permission $permission)
    {
        return $permission;
    }

    // Update a permission
    public function update(Request $request, Permission $permission)
    {
        $request->validate([
            'name' => 'sometimes|required|unique:permissions,name,' . $permission->id,
            'group' => 'nullable|string',
        ]);

        $permission->update($request->only('name', 'group'));

        return response()->json($permission);
    }

    // Delete a permission
    public function destroy(Permission $permission)
    {
        $permission->delete();

        return response()->json(null, 204);
    }
}
