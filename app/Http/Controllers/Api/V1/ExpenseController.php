<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Expense;
use App\Models\ExpenseHead;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ExpenseController extends Controller
{
    /**
     * Display a listing of expenses
     */
    public function index($id=null)
    {
        $expenses = Expense::with(['expenseHead', 'addedBy'])
            ->latest()
            ->get();

        $expense = null;
        if($id){
            $expense = Expense::findOrFail($id);
        }

        $heads = ExpenseHead::get()->mapWithKeys(function($head){
            return [$head->id => $head->name. ' ('. $head->amount. ')'];
        })->toArray();

        return view(backend('pages.expenses'), compact('expenses', 'expense', 'heads'));
    }

    /**
     * Show the form for creating a new expense
     */
    public function create()
    {
        $expenseHeads = ExpenseHead::orderBy('name')->get();

        return view('expenses.create', compact('expenseHeads'));
    }

    /**
     * Store a newly created expense
     */
    public function store(Request $request)
    {
        $request->validate([
            'amount' => 'required|numeric|min:0',
            'expense_date' => 'required|date',
            'description' => 'required|string',
            'expense_head_id' => 'required|exists:expense_heads,id',
        ]);

        Expense::create([
            'amount' => $request->amount,
            'expense_date' => $request->expense_date,
            'description' => $request->description,
            'expense_head_id' => $request->expense_head_id,
            'added_by' => Auth::id(),
        ]);

        return redirect()
            ->route('admin.finance.expenses.cost')
            ->with('success', 'Expense added successfully.');
    }

    /**
     * Show the form for editing the specified expense
     */
    public function show($id)
    {
        return $this->index($id);
    }

    /**
     * Update the specified expense
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'amount' => 'required|numeric|min:0',
            'expense_date' => 'required|date',
            'description' => 'required|string',
            'expense_head_id' => 'required|exists:expense_heads,id',
        ]);

        $expense = Expense::findOrFail($id);
        $expense->update($request->only([
            'amount',
            'expense_date',
            'description',
            'expense_head_id',
        ]));

        return redirect()
            ->route('admin.finance.expenses.cost')
            ->with('success', 'Expense updated successfully.');
    }

    /**
     * Remove the specified expense
     */
    public function destroy($id)
    {
        $expense = Expense::findOrFail($id);
        $expense->delete();

        return redirect()
            ->route('admin.finance.expenses.cost')
            ->with('success', 'Expense deleted successfully.');
    }
}
