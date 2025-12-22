<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Transaction;
use Illuminate\Http\Request;

class TransactionController extends Controller
{
    // List all transactions
    public function index()
    {
        return Transaction::with(['user', 'invoice'])
            ->orderBy('created_at', 'desc')
            ->get();
    }

    // Store a new transaction
    public function store(Request $request)
    {
        $request->validate([
            'user_id'        => 'required|exists:users,id',
            'invoice_id'     => 'nullable|exists:invoices,id',
            'amount'         => 'required|numeric|min:0',
            'type'           => 'required|in:credit,debit',
            'payment_method' => 'nullable|in:cash,card,online',
            'status'         => 'nullable|in:pending,completed,failed',
            'notes'          => 'nullable|string',
        ]);

        $transaction = Transaction::create($request->all());

        return response()->json($transaction, 201);
    }

    // Show a single transaction
    public function show(Transaction $transaction)
    {
        return $transaction->load(['user', 'invoice']);
    }

    // Update a transaction
    public function update(Request $request, Transaction $transaction)
    {
        $request->validate([
            'user_id'        => 'sometimes|required|exists:users,id',
            'invoice_id'     => 'nullable|exists:invoices,id',
            'amount'         => 'nullable|numeric|min:0',
            'type'           => 'sometimes|required|in:credit,debit',
            'payment_method' => 'nullable|in:cash,card,online',
            'status'         => 'nullable|in:pending,completed,failed',
            'notes'          => 'nullable|string',
        ]);

        $transaction->update($request->all());

        return response()->json($transaction);
    }

    // Delete a transaction
    public function destroy(Transaction $transaction)
    {
        $transaction->delete();

        return response()->json(null, 204);
    }
}
