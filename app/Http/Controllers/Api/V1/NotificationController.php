<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Notification;
use Illuminate\Http\Request;

class NotificationController extends Controller
{
    // List all notifications
    public function index()
    {
        return Notification::with('user')
            ->orderBy('created_at', 'desc')
            ->get();
    }

    // Store a new notification
    public function store(Request $request)
    {
        $request->validate([
            'user_id' => 'required|exists:users,id',
            'title'   => 'required|string',
            'message' => 'required|string',
            'url'     => 'nullable|string',
            'is_read' => 'nullable|boolean',
        ]);

        $notification = Notification::create($request->all());

        return response()->json($notification, 201);
    }

    // Show a single notification
    public function show(Notification $notification)
    {
        return $notification->load('user');
    }

    // Update a notification
    public function update(Request $request, Notification $notification)
    {
        $request->validate([
            'user_id' => 'sometimes|required|exists:users,id',
            'title'   => 'sometimes|required|string',
            'message' => 'sometimes|required|string',
            'url'     => 'nullable|string',
            'is_read' => 'nullable|boolean',
        ]);

        $notification->update($request->all());

        return response()->json($notification);
    }

    // Delete a notification
    public function destroy(Notification $notification)
    {
        $notification->delete();

        return response()->json(null, 204);
    }

    // Mark a notification as read
    public function markAsRead(Notification $notification)
    {
        $notification->update(['is_read' => true]);

        return response()->json($notification);
    }
}
