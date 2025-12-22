<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Backup;
use Illuminate\Http\Request;

class BackupController extends Controller
{
    // List all backups
    public function index()
    {
        return Backup::orderBy('created_at', 'desc')->get();
    }

    // Store a new backup
    public function store(Request $request)
    {
        $request->validate([
            'name'      => 'required|string|max:255',
            'file_path' => 'required|string|max:1000',
            'type'      => 'nullable|in:database,files,full',
            'size'      => 'nullable|integer|min:0',
            'status'    => 'nullable|in:pending,completed,failed',
            'notes'     => 'nullable|string',
        ]);

        $backup = Backup::create($request->all());

        return response()->json($backup, 201);
    }

    // Show a single backup
    public function show(Backup $backup)
    {
        return $backup;
    }

    // Update a backup
    public function update(Request $request, Backup $backup)
    {
        $request->validate([
            'name'      => 'sometimes|required|string|max:255',
            'file_path' => 'sometimes|required|string|max:1000',
            'type'      => 'nullable|in:database,files,full',
            'size'      => 'nullable|integer|min:0',
            'status'    => 'nullable|in:pending,completed,failed',
            'notes'     => 'nullable|string',
        ]);

        $backup->update($request->all());

        return response()->json($backup);
    }

    // Delete a backup (soft delete)
    public function destroy(Backup $backup)
    {
        $backup->delete();

        return response()->json(null, 204);
    }

    // Restore a soft-deleted backup
    public function restore($id)
    {
        $backup = Backup::withTrashed()->findOrFail($id);
        $backup->restore();

        return response()->json($backup);
    }
}
