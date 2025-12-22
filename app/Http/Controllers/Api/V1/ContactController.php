<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    // List all contacts
    public function index()
    {
        return Contact::orderBy('created_at', 'desc')->get();
    }

    // Store a new contact
    public function store(Request $request)
    {
        $request->validate([
            'name'    => 'required|string|max:255',
            'email'   => 'required|email|max:255',
            'subject' => 'nullable|string|max:255',
            'message' => 'required|string',
            'status'  => 'nullable|in:pending,replied,closed',
            'reply'   => 'nullable|string',
        ]);

        $contact = Contact::create($request->all());

        return response()->json($contact, 201);
    }

    // Show a single contact
    public function show(Contact $contact)
    {
        return $contact;
    }

    // Update a contact
    public function update(Request $request, Contact $contact)
    {
        $request->validate([
            'name'    => 'sometimes|required|string|max:255',
            'email'   => 'sometimes|required|email|max:255',
            'subject' => 'nullable|string|max:255',
            'message' => 'nullable|string',
            'status'  => 'nullable|in:pending,replied,closed',
            'reply'   => 'nullable|string',
        ]);

        $contact->update($request->all());

        return response()->json($contact);
    }

    // Delete a contact (soft delete)
    public function destroy(Contact $contact)
    {
        $contact->delete();

        return response()->json(null, 204);
    }

    // Restore a soft-deleted contact
    public function restore($id)
    {
        $contact = Contact::withTrashed()->findOrFail($id);
        $contact->restore();

        return response()->json($contact);
    }
}
