<?php

namespace App\Http\Controllers;

use App\Models\FeeCollection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class FeeCollectionController extends Controller
{
    /**
     * List all fee collections
     */
    public function index()
    {
        $collections = FeeCollection::with('collectedBy')
            ->latest()
            ->paginate(15);

        return view('fees.collections.index', compact('collections'));
    }

    /**
     * Show create form
     */
    public function create()
    {
        return view('fees.collections.create');
    }

    /**
     * Store fee collection
     */
    public function store(Request $request)
    {
        $request->validate([
            'total_amount'   => 'required|numeric|min:0',
            'paid_amount'    => 'required|numeric|min:0',
            'payment_method' => 'required|in:Online,Cash,Check,Others',
            'payment_note'   => 'nullable|string|max:255',
            'payment_date'   => 'required|date',
        ]);

        DB::transaction(function () use ($request) {

            $dueAmount = $request->total_amount - $request->paid_amount;

            FeeCollection::create([
                'total_amount'   => $request->total_amount,
                'paid_amount'    => $request->paid_amount,
                'due_amount'     => $dueAmount,
                'payment_method' => $request->payment_method,
                'payment_note'   => $request->payment_note,
                'payment_date'   => $request->payment_date,
                'collected_by'   => Auth::id(),
            ]);
        });

        return redirect()
            ->route('fee-collections.index')
            ->with('success', 'Fee collected successfully');
    }

    /**
     * Show a single collection
     */
    public function show(FeeCollection $feeCollection)
    {
        return view('fees.collections.show', compact('feeCollection'));
    }

    /**
     * Delete collection
     */
    public function destroy(FeeCollection $feeCollection)
    {
        $feeCollection->delete();

        return redirect()
            ->route('fee-collections.index')
            ->with('success', 'Fee collection deleted successfully');
    }
}
