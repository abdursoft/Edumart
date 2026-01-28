<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Expense extends Model
{
    use HasFactory;

    protected $fillable = [
        'amount',
        'expense_date',
        'description',
        'expense_head_id',
        'added_by',
    ];

    protected $casts = [
        'expense_date' => 'date',
        'amount' => 'decimal:2',
    ];

    /**
     * Expense Head relation
     */
    public function expenseHead()
    {
        return $this->belongsTo(ExpenseHead::class);
    }

    /**
     * Added By (User) relation
     */
    public function addedBy()
    {
        return $this->belongsTo(User::class, 'added_by');
    }
}
