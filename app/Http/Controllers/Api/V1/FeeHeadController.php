<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\FeeGroup;
use App\Models\FeeHead;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FeeHeadController extends Controller
{
    /**
     * Display a listing of fee heads
     */
    public function index($id=null)
    {
        $heads = FeeHead::with('user')->get();
        $head = null;
        if($id){
            $head = FeeHead::with('feeGroup')->findOrFail($id);
        }
        $groups = FeeGroup::latest()->pluck('name','id')->toArray();
        return view(backend('pages.fee_head'), compact('heads', 'head','groups'));
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
            'fee_group_id' => 'nullable'
        ]);

        FeeHead::create([
            'name'         => $request->name,
            'amount'       => $request->amount,
            'is_recurring' => $request->is_recurring,
            'fee_group_id' => $request->fee_group_id,
            'user_id'      => Auth::id(),
        ]);

        Toastr::success('Fee head created successfully', 'Success');

        return redirect()
            ->route('admin.finance.fees.fee_heads');
    }

    /**
     * Show the specified fee head
     */
    public function show($id)
    {
        return $this->index($id);
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
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'         => 'required|string|max:255|unique:fee_heads,name,' . $id,
            'amount'       => 'required|numeric|min:0',
            'is_recurring' => 'required|in:Yes,No',
            'fee_group_id' => 'nullable'
        ]);

        $feeHead = FeeHead::findOrFail($id);
        $feeHead->update($request->only([
            'name',
            'amount',
            'fee_group_id',
            'is_recurring',
        ]));

        Toastr::success('Fee head updated successfully', 'Success');

        return redirect()
            ->route('admin.finance.fees.fee_heads');
    }

    /**
     * Remove the specified fee head
     */
    public function destroy($id)
    {
        $feeHead = FeeHead::findOrFail($id);
        $feeHead->delete();
        Toastr::success('Fee head deleted successfully', 'Deleted');
        return redirect()
            ->route('admin.finance.fees.fee_heads');
    }
}
