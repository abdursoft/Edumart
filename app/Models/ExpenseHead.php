<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class ExpenseHead extends Model
{
    use HasFactory;

    protected $table = 'expense_heads';

    protected $fillable = [
        'name',
        'user_id',
        'amount',
        'is_recurring'
    ];

    /* ================= Relationships ================= */

    // Creator of the expense head
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Related expenses
    public function expenses()
    {
        return $this->hasMany(Expense::class);
    }

    /* ================= Scopes ================= */

    public function scopeByUser($query)
    {
        return $query->where('user_id', Auth::id());
    }
}
