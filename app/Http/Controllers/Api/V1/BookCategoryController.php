<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\BookCategory;
use Illuminate\Http\Request;

class BookCategoryController extends Controller
{
    // List all book categories
    public function index()
    {
        return BookCategory::orderBy('name')->get();
    }

    // Store a new book category
    public function store(Request $request)
    {
        $request->validate([
            'name'        => 'required|string|unique:book_categories,name',
            'description' => 'nullable|string',
            'status'      => 'nullable|in:active,inactive',
        ]);

        $bookCategory = BookCategory::create($request->all());

        return response()->json($bookCategory, 201);
    }

    // Show a single book category
    public function show(BookCategory $bookCategory)
    {
        return $bookCategory;
    }

    // Update a book category
    public function update(Request $request, BookCategory $bookCategory)
    {
        $request->validate([
            'name'        => 'sometimes|required|string|unique:book_categories,name,' . $bookCategory->id,
            'description' => 'nullable|string',
            'status'      => 'nullable|in:active,inactive',
        ]);

        $bookCategory->update($request->all());

        return response()->json($bookCategory);
    }

    // Delete a book category (soft delete)
    public function destroy(BookCategory $bookCategory)
    {
        $bookCategory->delete();

        return response()->json(null, 204);
    }

    // Restore a soft-deleted book category
    public function restore($id)
    {
        $bookCategory = BookCategory::withTrashed()->findOrFail($id);
        $bookCategory->restore();

        return response()->json($bookCategory);
    }
}
