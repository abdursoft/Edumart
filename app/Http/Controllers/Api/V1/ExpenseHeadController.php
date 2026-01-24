<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ExpenseHead;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ExpenseHeadController extends Controller
{
    /**
     * Display a listing of expense heads
     */
    public function index()
    {
        $expenseHeads = ExpenseHead::latest()->paginate(10);
        return view('expenses.heads.index', compact('expenseHeads'));
    }

    /**
     * Show the form for creating a new expense head
     */
    public function create()
    {
        return view('expenses.heads.create');
    }

    /**
     * Store a newly created expense head
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255|unique:expense_heads,name',
        ]);

        ExpenseHead::create([
            'name'    => $request->name,
            'user_id' => Auth::id(),
        ]);

        return redirect()
            ->route('expense-heads.index')
            ->with('success', 'Expense head created successfully');
    }

    /**
     * Show the specified expense head
     */
    public function show(ExpenseHead $expenseHead)
    {
        return view('expenses.heads.show', compact('expenseHead'));
    }

    /**
     * Show the form for editing the specified expense head
     */
    public function edit(ExpenseHead $expenseHead)
    {
        return view('expenses.heads.edit', compact('expenseHead'));
    }

    /**
     * Update the specified expense head
     */
    public function update(Request $request, ExpenseHead $expenseHead)
    {
        $request->validate([
            'name' => 'required|string|max:255|unique:expense_heads,name,' . $expenseHead->id,
        ]);

        $expenseHead->update([
            'name' => $request->name,
        ]);

        return redirect()
            ->route('expense-heads.index')
            ->with('success', 'Expense head updated successfully');
    }

    /**
     * Remove the specified expense head
     */
    public function destroy(ExpenseHead $expenseHead)
    {
        $expenseHead->delete();

        return redirect()
            ->route('expense-heads.index')
            ->with('success', 'Expense head deleted successfully');
    }
}
