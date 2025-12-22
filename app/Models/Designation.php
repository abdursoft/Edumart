<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Designation extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'category',
        'level',
    ];

    /**
     * Get the users for the designation.
     */
    public function user(){
        return $this->hasOne(User::class);
    }
}
