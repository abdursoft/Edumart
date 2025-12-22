<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GatewayConfiguration extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'type',
        'config',
        'status',
        'notes',
    ];

    protected $casts = [
        'config' => 'array', // Automatically cast JSON to array
    ];
}
