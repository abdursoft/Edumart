<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\BookShelf;
use Illuminate\Http\Request;

class BookShelfController extends Controller
{
    // List all bookshelves
    public function index()
    {
        return BookShelf::orderBy('name')->get();
    }

    // Store a new bookshelf
    public function store(Request $request)
    {
        $request->validate([
            'name'     => 'required|string',
            'location' => 'nullable|string',
            'capacity' => 'nullable|integer|min:0',
            'status'   => 'nullable|in:active,inactive',
        ]);

        $bookshelf = BookShelf::create($request->all());

        return response()->json($bookshelf, 201);
    }

    // Show a single bookshelf
    public function show(BookShelf $bookshelf)
    {
        return $bookshelf;
    }

    // Update a bookshelf
    public function update(Request $request, BookShelf $bookshelf)
    {
        $request->validate([
            'name'     => 'sometimes|required|string',
            'location' => 'nullable|string',
            'capacity' => 'nullable|integer|min:0',
            'status'   => 'nullable|in:active,inactive',
        ]);

        $bookshelf->update($request->all());

        return response()->json($bookshelf);
    }

    // Delete a bookshelf (soft delete)
    public function destroy(BookShelf $bookshelf)
    {
        $bookshelf->delete();

        return response()->json(null, 204);
    }

    // Restore a soft-deleted bookshelf
    public function restore($id)
    {
        $bookshelf = BookShelf::withTrashed()->findOrFail($id);
        $bookshelf->restore();

        return response()->json($bookshelf);
    }
}
