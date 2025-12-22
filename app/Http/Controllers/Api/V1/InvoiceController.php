<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Invoice;
use Illuminate\Http\Request;

class InvoiceController extends Controller
{
    // List all invoices
    public function index()
    {
        return Invoice::with('user')->orderBy('created_at', 'desc')->get();
    }

    // Store a new invoice
    public function store(Request $request)
    {
        $request->validate([
            'invoice_number' => 'required|string|unique:invoices,invoice_number',
            'user_id'        => 'required|exists:users,id',
            'amount'         => 'required|numeric|min:0',
            'status'         => 'nullable|in:pending,paid,cancelled',
            'due_date'       => 'nullable|date',
            'notes'          => 'nullable|string',
        ]);

        $invoice = Invoice::create($request->all());

        return response()->json($invoice, 201);
    }

    // Show a single invoice
    public function show(Invoice $invoice)
    {
        return $invoice->load('user');
    }

    // Update an invoice
    public function update(Request $request, Invoice $invoice)
    {
        $request->validate([
            'invoice_number' => 'sometimes|required|string|unique:invoices,invoice_number,' . $invoice->id,
            'user_id'        => 'sometimes|required|exists:users,id',
            'amount'         => 'nullable|numeric|min:0',
            'status'         => 'nullable|in:pending,paid,cancelled',
            'due_date'       => 'nullable|date',
            'notes'          => 'nullable|string',
        ]);

        $invoice->update($request->all());

        return response()->json($invoice);
    }

    // Delete an invoice (soft delete)
    public function destroy(Invoice $invoice)
    {
        $invoice->delete();

        return response()->json(null, 204);
    }

    // Restore a soft-deleted invoice
    public function restore($id)
    {
        $invoice = Invoice::withTrashed()->findOrFail($id);
        $invoice->restore();

        return response()->json($invoice);
    }
}
