<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Asset extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'category',
        'note',
        'status',
        'price',
        'payment_status',
        'advance_amount',
        'due_amount',
        'payment_method',
        'supplier_id',
        'added_by',
        'canceled_by',
        'accepted_by',
        'returned_by',
    ];

    /**
     * Relationships
     */
    public function supplier()
    {
        return $this->belongsTo(Supplier::class);
    }

    public function addedBy()
    {
        return $this->belongsTo(User::class, 'added_by');
    }

    public function canceledBy()
    {
        return $this->belongsTo(User::class, 'canceled_by');
    }

    public function acceptedBy()
    {
        return $this->belongsTo(User::class, 'accepted_by');
    }

    public function returnedBy()
    {
        return $this->belongsTo(User::class, 'returned_by');
    }
}
