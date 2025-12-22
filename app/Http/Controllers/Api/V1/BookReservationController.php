<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\BookReservation;
use Illuminate\Http\Request;

class BookReservationController extends Controller
{
    // List all reservations
    public function index()
    {
        return BookReservation::with(['user', 'book'])
            ->orderBy('reserved_at', 'desc')
            ->get();
    }

    // Store a new reservation
    public function store(Request $request)
    {
        $request->validate([
            'user_id'    => 'required|exists:users,id',
            'book_id'    => 'required|exists:books,id',
            'reserved_at'=> 'nullable|date',
            'expires_at' => 'nullable|date|after_or_equal:reserved_at',
            'status'     => 'nullable|in:active,completed,cancelled',
        ]);

        $reservation = BookReservation::create([
            'user_id' => $request->user_id,
            'book_id' => $request->book_id,
            'reserved_at' => $request->reserved_at ?? now(),
            'expires_at' => $request->expires_at,
            'status' => $request->status ?? 'active',
        ]);

        return response()->json($reservation, 201);
    }

    // Show a single reservation
    public function show(BookReservation $bookReservation)
    {
        return $bookReservation->load(['user', 'book']);
    }

    // Update a reservation
    public function update(Request $request, BookReservation $bookReservation)
    {
        $request->validate([
            'user_id'    => 'sometimes|required|exists:users,id',
            'book_id'    => 'sometimes|required|exists:books,id',
            'reserved_at'=> 'nullable|date',
            'expires_at' => 'nullable|date|after_or_equal:reserved_at',
            'status'     => 'nullable|in:active,completed,cancelled',
        ]);

        $bookReservation->update($request->all());

        return response()->json($bookReservation);
    }

    // Delete a reservation
    public function destroy(BookReservation $bookReservation)
    {
        $bookReservation->delete();

        return response()->json(null, 204);
    }
}
