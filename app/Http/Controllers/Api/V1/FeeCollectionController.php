<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\FeeCollection;
use App\Models\StudentFee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class FeeCollectionController extends Controller
{
    /**
     * List all fee collections
     */
    public function index($id=null)
    {
        $collections = FeeCollection::with('collectedBy')
            ->latest()
            ->get();
        $collection = null;
        $invoices = StudentFee::latest()->get()->mapWithKeys(function($fee){
            return [$fee->id => $fee->invoice_id];
        })->toArray();
        if($id){
            $collection = FeeCollection::with('collectedBy')->findOrFail($id);
        }
        return view(backend('pages.fee-collection'), compact('collections', 'collection', 'invoices'));
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
        // dd($request->input());
        $request->validate([
            'student_fee_id' => 'required|exists:student_fees,id',
            'paid_amount'    => 'required|numeric|min:0',
            'payment_method' => 'required|in:Online,Cash,Check,Others',
            'payment_note'   => 'nullable|string|max:255',
        ]);

        $fee = StudentFee::with('feeHead')->findOrFail($request->student_fee_id);

        DB::transaction(function () use ($request, $fee) {

            $exAmount = FeeCollection::where('fee_id', $fee->id)->sum('paid_amount');

            $dueAmount = $fee->feeHead->amount - ($request->paid_amount + $exAmount);

            FeeCollection::create([
                'fee_id'         => $fee->id,
                'total_amount'   => $fee->feeHead->amount,
                'paid_amount'    => $request->paid_amount,
                'due_amount'     => $dueAmount,
                'payment_method' => $request->payment_method,
                'payment_note'   => $request->payment_note,
                'payment_date'   => now()->format('Y-m-d'),
                'collected_by'   => Auth::id(),
            ]);

            $fee->amount = $fee->amount + $request->paid_amount;
            if($dueAmount <= 0){
                $fee->status = 'Paid';
                $fee->save();
            }else{
                $fee->status = 'Partial';
                $fee->save();
            }
        });

        return redirect()
            ->route('admin.finance.fees.fee_collection')
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
            ->route('admin.finance.fees.fee_collection')
            ->with('success', 'Fee collection deleted successfully');
    }
}
