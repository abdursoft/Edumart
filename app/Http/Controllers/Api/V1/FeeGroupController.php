<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\FeeGroup;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FeeGroupController extends Controller
{
    /**
     * Display a listing of fee heads
     */
    public function index($id=null)
    {
        $groups = FeeGroup::get();
        $group = null;
        if($id){
            $group = FeeGroup::findOrFail($id);
        }
        return view(backend('pages.fee-group'), compact('groups', 'group'));
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
            'description'  => 'required|string',
        ]);

        FeeGroup::create([
            'name'         => $request->name,
            'description'       => strip_tags($request->description),
        ]);

        return redirect()
            ->route('admin.finance.fees.fee_group')
            ->with('success', 'Fee group created successfully');
    }

    /**
     * Show the specified fee head
     */
    public function show($id)
    {
        return $this->index($id);
    }

    /**
     * Update the specified fee head
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'         => 'required|string|max:255|unique:fee_heads,name,' . $id,
            'description'       => 'required|string',
        ]);
        $feeHead = FeeGroup::findOrFail($id);
        $feeHead->update($request->only([
            'name',
            'description',
        ]));

        return redirect()
            ->route('admin.finance.fees.fee_group')
            ->with('success', 'Fee group updated successfully');
    }

    /**
     * Remove the specified fee head
     */
    public function destroy($id)
    {
        $feeHead = FeeGroup::findOrFail($id);
        $feeHead->delete();

        return redirect()
            ->route('admin.finance.fees.fee_group')
            ->with('success', 'Fee group deleted successfully');
    }
}
