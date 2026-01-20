<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FeeHead extends Model
{
    use HasFactory;

    protected $table = 'fee_heads';

    protected $fillable = [
        'name',
        'amount',
        'is_recurring',
        'user_id',
        'fee_group_id'
    ];

    protected $casts = [
        'amount' => 'decimal:2',
    ];

    /* ================= Relationships ================= */

    // Fee head creator
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // If later linked with student fees
    public function studentFees()
    {
        return $this->hasMany(StudentFee::class);
    }

    /* ================= Scopes ================= */

    public function scopeRecurring($query)
    {
        return $query->where('is_recurring', 'Yes');
    }

    public function scopeOneTime($query)
    {
        return $query->where('is_recurring', 'No');
    }

    /**
     * Relation with fee group
     */
    public function feeGroup(){
        return $this->belongsTo(FeeGroup::class, 'fee_group_id');
    }
}
