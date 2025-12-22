<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Author;
use Illuminate\Http\Request;

class AuthorController extends Controller
{
    // List all authors
    public function index()
    {
        return Author::orderBy('first_name')->get();
    }

    // Store a new author
    public function store(Request $request)
    {
        $request->validate([
            'first_name' => 'required|string',
            'last_name'  => 'required|string',
            'email'      => 'nullable|email|unique:authors,email',
            'bio'        => 'nullable|string',
            'dob'        => 'nullable|date',
            'status'     => 'nullable|in:active,inactive',
        ]);

        $author = Author::create($request->all());

        return response()->json($author, 201);
    }

    // Show a single author
    public function show(Author $author)
    {
        return $author;
    }

    // Update an author
    public function update(Request $request, Author $author)
    {
        $request->validate([
            'first_name' => 'sometimes|required|string',
            'last_name'  => 'sometimes|required|string',
            'email'      => 'nullable|email|unique:authors,email,' . $author->id,
            'bio'        => 'nullable|string',
            'dob'        => 'nullable|date',
            'status'     => 'nullable|in:active,inactive',
        ]);

        $author->update($request->all());

        return response()->json($author);
    }

    // Delete an author (soft delete)
    public function destroy(Author $author)
    {
        $author->delete();

        return response()->json(null, 204);
    }

    // Restore a soft-deleted author
    public function restore($id)
    {
        $author = Author::withTrashed()->findOrFail($id);
        $author->restore();

        return response()->json($author);
    }
}
