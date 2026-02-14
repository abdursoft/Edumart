<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Jobs\ContactEmail;
use App\Models\Contact;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ContactController extends Controller
{
    // List all contacts
    public function index($id=null)
    {
        $contact = null;
        if($id){
            $contact = Contact::find($id);
        }
        $contacts = Contact::latest()->get();
        return view(backend('pages.contacts'), compact('contact', 'contacts'));
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
            'id'      => 'nullable'
        ]);

        if($request->filled('id')){
            $msg = Contact::find($request->id);
            Contact::create([
                'name' => $msg->name,
                'email' => $msg->email,
                'subject' => $msg->subject,
                'message' => $msg->message,
                'reply' => $request->message
            ]);
            $msg->reply = $request->message;
            $msg->save();
            ContactEmail::dispatch($request->message, $request->subject, $msg->name, $msg->email);
            Toastr::success('Replay sent successfully', 'Message sent');
            return redirect()->route('admin.communication.email');
        }

        Contact::create([
                'name' => $request->name,
                'email' => $request->email,
                'subject' => $request->subject,
                'message' => $request->message,
            ]);
        ContactEmail::dispatch($request->message, $request->subject, $request->name, $request->email);
        Toastr::success('Email sent successfully', 'Message sent');
        return redirect()->route('admin.communication.email');
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

    /**
     * Email stats
     */
    public function noReplay(){
        return Contact::where('reply',NULL)->select('id','subject','name','created_at')->get() ?? [];
    }

    /**
     * public contact add
     */
    public function contactPost(Request $request){
        $validator = Validator::make($request->all(), [
            'email'    => 'required|email',
            'subject' => 'required|string',
            'message' => 'required|string',
            'captcha' => 'required|string'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }

        if ($request->captcha !== session('captcha_code') ) {
            return response()->json([
                'status'  => 'error',
                'message' => 'Invalid security captcha',
            ], 401);
        }

        Contact::create([
            'name' => $request->name,
            'email' => $request->email,
            'subject' => $request->subject,
            'message' => $request->message,
        ]);

        if(site('contact_email')){
            ContactEmail::dispatch($request->subject, 'New message received from contact form!', $request->name, site('contact_email'));
        }

        return response()->json([
            'status' => 'success',
            'message' => 'We will contact you asap, thanks for stay with us!'
        ]);
    }
}
