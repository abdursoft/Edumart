<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentFee extends Model
{
    use HasFactory;

    protected $table = 'student_fees';

    protected $fillable = [
        'amount',
        'status',
        'due_date',
        'fee_head_id',
        'student_id',
    ];

    protected $casts = [
        'amount'   => 'decimal:2',
        'due_date' => 'date',
    ];

    /* ================= Relationships ================= */

    public function feeHead()
    {
        return $this->belongsTo(FeeHead::class);
    }

    public function student()
    {
        return $this->belongsTo(User::class, 'student_id');
    }

    /* ================= Scopes ================= */

    public function scopeDue($query)
    {
        return $query->where('status', 'Due');
    }

    public function scopePaid($query)
    {
        return $query->where('status', 'Paid');
    }

    public function scopePartial($query)
    {
        return $query->where('status', 'Partial');
    }

    public function scopeOverdue($query)
    {
        return $query
            ->where('status', '!=', 'Paid')
            ->whereDate('due_date', '<', now());
    }
}
