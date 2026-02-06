<?php
namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Asset;
use App\Models\Supplier;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AssetsController extends Controller
{
    /**
     * Display a listing of assets.
     */
    public function index()
    {
        $assets = Asset::with(['supplier', 'addedBy'])->latest()->get();
        $asset = null;
        $suppliers = Supplier::latest()->get();
        return view(backend('pages.asset'), compact('assets', 'asset', 'suppliers'));
    }

    /**
     * Show the form for creating a new asset.
     */
    public function create()
    {
        $suppliers = Supplier::all();
        return view('assets.create', compact('suppliers'));
    }

    /**
     * Store a newly created asset.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'           => 'required|string|max:255',
            'category'       => 'nullable|string|max:255',
            'note'           => 'nullable|string',
            'price'          => 'required|numeric|min:0',
            'advance_amount' => 'nullable|numeric|min:0',
            'due_amount'     => 'required|numeric|min:0',
            'payment_method' => 'required|in:cash,check,online,exchange',
            'supplier_id'    => 'required|exists:suppliers,id',
        ]);

        Asset::create([
            'name'           => $request->name,
            'category'       => $request->category,
            'note'           => $request->note,
            'price'          => $request->price,
            'advance_amount' => $request->advance_amount ?? 0,
            'due_amount'     => $request->due_amount,
            'payment_method' => $request->payment_method,
            'payment_status' => $request->due_amount > 0 ? 'have_due' : 'completed',
            'supplier_id'    => $request->supplier_id,
            'added_by'       => Auth::id(),
        ]);

        Toastr::success('Asset created successfully', 'Success');
        return redirect()->route('admin.administration.assets');
    }

    /**
     * Display the specified asset.
     */
    public function show($id)
    {
        $assets = Asset::with(['supplier', 'addedBy'])->latest()->get();
        $asset = Asset::with('supplier', 'addedBy', 'acceptedBy', 'returnedBy', 'canceledBy')->findOrFail($id);
        $suppliers = Supplier::latest()->get();
        return view(backend('pages.asset'), compact('assets', 'asset', 'suppliers'));
    }

    /**
     * Show the form for editing the specified asset.
     */
    public function edit(Asset $asset)
    {
        $suppliers = Supplier::all();
        return view('assets.edit', compact('asset', 'suppliers'));
    }

    /**
     * Update the specified asset.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'           => 'required|string|max:255',
            'category'       => 'nullable|string|max:255',
            'note'           => 'nullable|string',
            'price'          => 'required|numeric|min:0',
            'advance_amount' => 'nullable|numeric|min:0',
            'due_amount'     => 'required|numeric|min:0',
            'payment_method' => 'required|in:cash,check,online,exchange',
            'supplier_id'    => 'required|exists:suppliers,id',
            'status'         => 'required|in:pending,returned,canceled,accepted',
        ]);

        $asset = Asset::findOrFail($id);

        $asset->update([
            'name'           => $request->name,
            'category'       => $request->category,
            'note'           => $request->note,
            'price'          => $request->price,
            'advance_amount' => $request->advance_amount,
            'due_amount'     => $request->due_amount,
            'payment_method' => $request->payment_method,
            'payment_status' => $request->due_amount > 0 ? 'have_due' : 'completed',
            'supplier_id'    => $request->supplier_id,
            'status'         => $request->status,
        ]);
        Toastr::success('Asset updated successfully', 'Success');
        return redirect()->route('admin.administration.assets');
    }

    /**
     * Remove the specified asset.
     */
    public function destroy($id)
    {
        $asset = Asset::find($id);
        if($asset){
            $asset->delete();
            Toastr::success('Asset delete successfully', 'Success');
        }else{
            Toastr::error('Asset couldn\'t deleted', 'Not Found');
        }
        return redirect()->route('admin.administration.assets');
    }
}
