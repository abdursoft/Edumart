<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Salary extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'basic',
        'allowance',
        'deduction',
        'total',
        'payment_date',
        'status',
        'notes',
    ];

    protected $casts = [
        'basic'        => 'decimal:2',
        'allowance'    => 'decimal:2',
        'deduction'    => 'decimal:2',
        'total'        => 'decimal:2',
        'payment_date' => 'date',
    ];

    // Relationships
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
