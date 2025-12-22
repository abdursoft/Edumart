<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Role;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    // List all roles
    public function index()
    {
        return Role::all();
    }

    // Store a new role
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:roles,name',
            'description' => 'nullable|string',
        ]);

        $role = Role::create($request->only('name', 'description'));

        return response()->json($role, 201);
    }

    // Show a single role
    public function show(Role $role)
    {
        return $role;
    }

    // Update a role
    public function update(Request $request, Role $role)
    {
        $request->validate([
            'name' => 'sometimes|required|unique:roles,name,' . $role->id,
            'description' => 'nullable|string',
        ]);

        $role->update($request->only('name', 'description'));

        return response()->json($role);
    }

    // Delete a role
    public function destroy(Role $role)
    {
        $role->delete();

        return response()->json(null, 204);
    }
}
