<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Salary;
use Illuminate\Http\Request;

class SalaryController extends Controller
{
    // List all salaries
    public function index()
    {
        return Salary::with('user')
            ->orderBy('payment_date', 'desc')
            ->get();
    }

    // Store a new salary record
    public function store(Request $request)
    {
        $request->validate([
            'user_id'      => 'required|exists:users,id',
            'basic'        => 'required|numeric|min:0',
            'allowance'    => 'nullable|numeric|min:0',
            'deduction'    => 'nullable|numeric|min:0',
            'total'        => 'required|numeric|min:0',
            'payment_date' => 'required|date',
            'status'       => 'nullable|in:pending,paid,cancelled',
            'notes'        => 'nullable|string',
        ]);

        $salary = Salary::create($request->all());

        return response()->json($salary, 201);
    }

    // Show a single salary record
    public function show(Salary $salary)
    {
        return $salary->load('user');
    }

    // Update a salary record
    public function update(Request $request, Salary $salary)
    {
        $request->validate([
            'user_id'      => 'sometimes|required|exists:users,id',
            'basic'        => 'nullable|numeric|min:0',
            'allowance'    => 'nullable|numeric|min:0',
            'deduction'    => 'nullable|numeric|min:0',
            'total'        => 'nullable|numeric|min:0',
            'payment_date' => 'nullable|date',
            'status'       => 'nullable|in:pending,paid,cancelled',
            'notes'        => 'nullable|string',
        ]);

        $salary->update($request->all());

        return response()->json($salary);
    }

    // Delete a salary record
    public function destroy(Salary $salary)
    {
        $salary->delete();

        return response()->json(null, 204);
    }
}
