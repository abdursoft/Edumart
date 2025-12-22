<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Holyday;
use Illuminate\Http\Request;

class HolydayController extends Controller
{
    // List all holidays
    public function index()
    {
        return Holyday::orderBy('start_date', 'asc')->get();
    }

    // Store a new holiday
    public function store(Request $request)
    {
        $request->validate([
            'title'       => 'required|string',
            'description' => 'nullable|string',
            'start_date'  => 'required|date',
            'end_date'    => 'nullable|date|after_or_equal:start_date',
            'is_national' => 'boolean',
        ]);

        $holiday = Holyday::create($request->all());

        return response()->json($holiday, 201);
    }

    // Show a single holiday
    public function show(Holyday $holyday)
    {
        return $holyday;
    }

    // Update a holiday
    public function update(Request $request, Holyday $holyday)
    {
        $request->validate([
            'title'       => 'sometimes|required|string',
            'description' => 'nullable|string',
            'start_date'  => 'sometimes|required|date',
            'end_date'    => 'nullable|date|after_or_equal:start_date',
            'is_national' => 'boolean',
        ]);

        $holyday->update($request->all());

        return response()->json($holyday);
    }

    // Delete a holiday
    public function destroy(Holyday $holyday)
    {
        $holyday->delete();

        return response()->json(null, 204);
    }
}
