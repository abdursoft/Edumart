<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FeeCollection extends Model
{
    use HasFactory;

    protected $table = 'fee_collections';

    protected $fillable = [
        'fee_id',
        'total_amount',
        'paid_amount',
        'due_amount',
        'payment_method',
        'payment_note',
        'payment_date',
        'collected_by',
    ];

    protected $casts = [
        'total_amount' => 'decimal:2',
        'paid_amount'  => 'decimal:2',
        'due_amount'   => 'decimal:2',
        'payment_date' => 'date',
    ];

    /* ================= Relationships ================= */

    public function collectedBy()
    {
        return $this->belongsTo(User::class, 'collected_by');
    }

    public function fee(){
        return $this->belongsTo(StudentFee::class, 'fee_id');
    }

    /* ================= Helpers ================= */

    public function isFullyPaid(): bool
    {
        return $this->due_amount <= 0;
    }
}
