<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Event;
use Illuminate\Http\Request;

class EventController extends Controller
{
    // List all events
    public function index()
    {
        return Event::orderBy('start_date', 'desc')->get();
    }

    // Store a new event
    public function store(Request $request)
    {
        $request->validate([
            'title'       => 'required|string',
            'description' => 'nullable|string',
            'start_date'  => 'required|date',
            'end_date'    => 'nullable|date|after_or_equal:start_date',
            'location'    => 'nullable|string',
            'type'        => 'required|in:Holiday,Meeting,Exam,Workshop,Other',
            'is_public'   => 'boolean',
        ]);

        $event = Event::create($request->all());

        return response()->json($event, 201);
    }

    // Show a single event
    public function show(Event $event)
    {
        return $event;
    }

    // Update an event
    public function update(Request $request, Event $event)
    {
        $request->validate([
            'title'       => 'sometimes|required|string',
            'description' => 'nullable|string',
            'start_date'  => 'sometimes|required|date',
            'end_date'    => 'nullable|date|after_or_equal:start_date',
            'location'    => 'nullable|string',
            'type'        => 'nullable|in:Holiday,Meeting,Exam,Workshop,Other',
            'is_public'   => 'boolean',
        ]);

        $event->update($request->all());

        return response()->json($event);
    }

    // Delete an event
    public function destroy(Event $event)
    {
        $event->delete();

        return response()->json(null, 204);
    }
}
