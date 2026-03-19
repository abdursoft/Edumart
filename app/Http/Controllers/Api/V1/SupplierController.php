<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Supplier;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SupplierController extends Controller
{
    /**
     * Display a listing of suppliers.
     */
    public function index()
    {
        $suppliers = Supplier::with('addedBy')->latest()->get();
        $supplier = null;
        return view(backend('pages.supplier'), compact('suppliers', 'supplier'));
    }

    /**
     * Show the form for creating a new supplier.
     */
    public function create()
    {
        return view('suppliers.create');
    }

    /**
     * Store a newly created supplier in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'         => 'required|string|max:255',
            'designation'  => 'nullable|string|max:255',
            'phone'        => 'required|string|max:50',
            'email'        => 'nullable|email|max:255',
            'address'      => 'required|string',
            'company_name' => 'nullable|string|max:255',
        ]);

        Supplier::create([
            'name'         => $request->name,
            'designation'  => $request->designation,
            'phone'        => $request->phone,
            'email'        => $request->email,
            'address'      => strip_tags($request->address),
            'company_name' => $request->company_name,
            'added_by'     => Auth::id(),
        ]);

        Toastr::success('Supplier created successfully', 'Success');
        return redirect()->route('admin.administration.suppliers');
    }

    /**
     * Display the specified supplier.
     */
    public function show($id)
    {
        $supplier = Supplier::findOrFail($id);
        $suppliers = Supplier::with('addedBy')->latest()->get();
        return view(backend('pages.supplier'), compact('suppliers', 'supplier'));
    }

    /**
     * Show the form for editing the specified supplier.
     */
    public function edit(Supplier $supplier)
    {
        return view('suppliers.edit', compact('supplier'));
    }

    /**
     * Update the specified supplier in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'         => 'required|string|max:255',
            'designation'  => 'nullable|string|max:255',
            'phone'        => 'required|string|max:50',
            'email'        => 'nullable|email|max:255',
            'address'      => 'required|string',
            'company_name' => 'nullable|string|max:255',
        ]);

        $supplier = Supplier::findOrFail($id);

        $supplier->update([
            'name'         => $request->name,
            'designation'  => $request->designation,
            'phone'        => $request->phone,
            'email'        => $request->email,
            'address'      => strip_tags($request->address),
            'company_name' => $request->company_name,
        ]);

        Toastr::success('Supplier updated successfully', 'Success');
        return redirect()->route('admin.administration.suppliers');
    }

    /**
     * Remove the specified supplier from storage.
     */
    public function destroy($id)
    {
        $supplier = Supplier::findOrFail($id);
        $supplier->delete();

        Toastr::success('Supplier deleted successfully', 'Success');
        return redirect()->route('admin.administration.suppliers');
    }
}
