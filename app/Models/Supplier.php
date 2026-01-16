<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'designation',
        'phone',
        'email',
        'address',
        'company_name',
        'added_by',
    ];

    /**
     * Supplier added by a user
     */
    public function addedBy()
    {
        return $this->belongsTo(User::class, 'added_by');
    }
}
