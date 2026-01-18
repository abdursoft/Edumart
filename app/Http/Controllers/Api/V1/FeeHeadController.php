<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\FeeHead;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FeeHeadController extends Controller
{
    /**
     * Display a listing of fee heads
     */
    public function index()
    {
        $feeHeads = FeeHead::latest()->paginate(10);
        dd($feeHeads);
        return view('fees.heads.index', compact('feeHeads'));
    }

    /**
     * Show the form for creating a new fee head
     */
    public function create()
    {
        return view('fees.heads.create');
    }

    /**
     * Store a newly created fee head
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'         => 'required|string|max:255|unique:fee_heads,name',
            'amount'       => 'required|numeric|min:0',
            'is_recurring' => 'required|in:Yes,No',
        ]);

        FeeHead::create([
            'name'         => $request->name,
            'amount'       => $request->amount,
            'is_recurring' => $request->is_recurring,
            'user_id'      => Auth::id(),
        ]);

        return redirect()
            ->route('fee-heads.index')
            ->with('success', 'Fee head created successfully');
    }

    /**
     * Show the specified fee head
     */
    public function show(FeeHead $feeHead)
    {
        return view('fees.heads.show', compact('feeHead'));
    }

    /**
     * Show the form for editing the specified fee head
     */
    public function edit(FeeHead $feeHead)
    {
        return view('fees.heads.edit', compact('feeHead'));
    }

    /**
     * Update the specified fee head
     */
    public function update(Request $request, FeeHead $feeHead)
    {
        $request->validate([
            'name'         => 'required|string|max:255|unique:fee_heads,name,' . $feeHead->id,
            'amount'       => 'required|numeric|min:0',
            'is_recurring' => 'required|in:Yes,No',
        ]);

        $feeHead->update($request->only([
            'name',
            'amount',
            'is_recurring',
        ]));

        return redirect()
            ->route('fee-heads.index')
            ->with('success', 'Fee head updated successfully');
    }

    /**
     * Remove the specified fee head
     */
    public function destroy(FeeHead $feeHead)
    {
        $feeHead->delete();

        return redirect()
            ->route('fee-heads.index')
            ->with('success', 'Fee head deleted successfully');
    }
}
