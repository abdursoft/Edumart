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
    public function index($id=null)
    {
        $head = null;
        $heads = ExpenseHead::latest()->get();
        if($id){
            $head = ExpenseHead::findOrFail($id);
        }
        return view(backend('pages.expense_head'), compact('heads','head'));
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
            'amount' => 'required|numeric|min:0'
        ]);

        ExpenseHead::create([
            'name'    => $request->name,
            'amount'  => $request->amount,
            'user_id' => Auth::id(),
        ]);

        return redirect()
            ->route('admin.finance.expenses.heads')
            ->with('success', 'Expense head created successfully');
    }

    /**
     * Show the specified expense head
     */
    public function show($id)
    {
        return $this->index($id);
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
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255|unique:expense_heads,name,' . $id,
            'amount' => 'required|numeric|min:0'
        ]);

        $expenseHead = ExpenseHead::findOrFail($id);

        $expenseHead->update([
            'name' => $request->name,
        ]);

        return redirect()
            ->route('admin.finance.expenses.heads')
            ->with('success', 'Expense head updated successfully');
    }

    /**
     * Remove the specified expense head
     */
    public function destroy($id)
    {
        $expenseHead = ExpenseHead::findOrFail($id);
        $expenseHead->delete();

        return redirect()
            ->route('admin.finance.expenses.heads')
            ->with('success', 'Expense head deleted successfully');
    }
}
