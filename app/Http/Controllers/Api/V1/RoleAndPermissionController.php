<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RoleAndPermissionController extends Controller
{

    /**
     * Display a listing of roles.
     */
    public function index()
    {
        $roles       = Role::with('permissions')->get();
        $permissions = Permission::all();

        if(!permitted('manage_permissions')){
            dd($permissions);
        }

        return view(backend('pages.role'), compact('roles', 'permissions'));
    }

    /**
     * Show the form for creating a new role.
     */
    public function create()
    {
        $permissions = Permission::all();
        return view(backend('pages.role-new'), compact('permissions'));
    }

    /**
     * Store a newly created role.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'        => 'required|string|unique:roles,name',
            'permissions' => 'array',
        ]);

        $role = Role::create(['name' => $request->name]);

        if ($request->has('permissions')) {
            $role->syncPermissions($request->permissions);
        }

        return redirect()->route('admin.settings.role_permission')->with('success', 'Role created successfully');
    }

    /**
     * Show the form for editing the specified role.
     */
    public function edit($role)
    {
        $role = Role::findOrFail($role);
        $permissions     = Permission::all();
        $rolePermissions = $role->permissions->pluck('name')->toArray();

        return view(backend('pages.role-edit'), compact('role', 'permissions', 'rolePermissions'));
    }

    /**
     * Update the specified role.
     */
    public function update(Request $request, $role)
    {
        $request->validate([
            'name'        => 'required|string|unique:roles,name,' . $role,
            'permissions' => 'array',
        ]);

        $role = Role::findOrFail($role);

        $role->update(['name' => $request->name]);

        if ($request->has('permissions')) {
            $role->syncPermissions($request->permissions);
        } else {
            $role->syncPermissions([]);
        }

        return redirect()->route('admin.settings.role_permission')->with('success', 'Role updated successfully');
    }

    /**
     * Remove the specified role.
     */
    public function destroy(Role $role)
    {
        $role->delete();
        return redirect()->route('roles.index')->with('success', 'Role deleted successfully');
    }

/* ===================== PERMISSIONS ===================== */

    /**
     * Store a new permission.
     */
    public function storePermission(Request $request)
    {
        $request->validate([
            'name' => 'required|string|unique:permissions,name',
        ]);

        Permission::create(['name' => $request->name]);

        return back()->with('success', 'Permission created successfully');
    }

    /**
     * Delete a permission.
     */
    public function destroyPermission(Permission $permission)
    {
        $permission->delete();
        return back()->with('success', 'Permission deleted successfully');
    }
}
