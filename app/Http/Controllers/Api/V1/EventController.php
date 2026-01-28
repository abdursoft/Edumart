<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Event;
use Illuminate\Http\Request;

class EventController extends Controller
{
    // List all events
    public function index($id=null)
    {
        $events = Event::orderBy('start_date', 'desc')->get();
        $event  = null;
        if($id){
            $event = Event::findOrFail($id);
        }
        return view(backend('pages.event-calendar'), compact('event', 'events'));
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

        Event::create($request->all());

        return redirect()->route('admin.information.event_calendar')->with('success', 'Event created successfully');
    }

    // Show a single event
    public function show($id)
    {
        return $this->index($id);
    }

    // Update an event
    public function update(Request $request, $id)
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

        $event = Event::findOrFail($id);

        $event->update($request->all());

        return redirect()->route('admin.information.event_calendar')->with('success', 'Event updated successfully');
    }

    // Delete an event
    public function destroy($id)
    {
        $event = Event::findOrFail($id);
        $event->delete();

        return redirect()->route('admin.information.event_calendar')->with('success', 'Event deleted successfully');
    }
}
