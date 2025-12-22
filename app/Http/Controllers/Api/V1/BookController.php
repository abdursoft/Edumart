<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Book;
use Illuminate\Http\Request;

class BookController extends Controller
{
    // List all books
    public function index()
    {
        return Book::with(['author', 'category', 'shelf'])
            ->orderBy('title')
            ->get();
    }

    // Store a new book
    public function store(Request $request)
    {
        $request->validate([
            'title'          => 'required|string',
            'author_id'      => 'required|exists:authors,id',
            'category_id'    => 'required|exists:book_categories,id',
            'book_shelf_id'  => 'nullable|exists:book_shelves,id',
            'isbn'           => 'nullable|string|unique:books,isbn',
            'publication_year' => 'nullable|integer|min:0',
            'pages'          => 'nullable|integer|min:1',
            'summary'        => 'nullable|string',
            'status'         => 'nullable|in:available,unavailable',
        ]);

        $book = Book::create($request->all());

        return response()->json($book, 201);
    }

    // Show a single book
    public function show(Book $book)
    {
        return $book->load(['author', 'category', 'shelf']);
    }

    // Update a book
    public function update(Request $request, Book $book)
    {
        $request->validate([
            'title'          => 'sometimes|required|string',
            'author_id'      => 'sometimes|required|exists:authors,id',
            'category_id'    => 'sometimes|required|exists:book_categories,id',
            'book_shelf_id'  => 'nullable|exists:book_shelves,id',
            'isbn'           => 'nullable|string|unique:books,isbn,' . $book->id,
            'publication_year' => 'nullable|integer|min:0',
            'pages'          => 'nullable|integer|min:1',
            'summary'        => 'nullable|string',
            'status'         => 'nullable|in:available,unavailable',
        ]);

        $book->update($request->all());

        return response()->json($book);
    }

    // Delete a book (soft delete)
    public function destroy(Book $book)
    {
        $book->delete();

        return response()->json(null, 204);
    }

    // Restore a soft-deleted book
    public function restore($id)
    {
        $book = Book::withTrashed()->findOrFail($id);
        $book->restore();

        return response()->json($book);
    }
}
