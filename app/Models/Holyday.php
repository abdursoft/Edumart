<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Holyday extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description',
        'start_date',
        'end_date',
        'is_national',
    ];

    protected $casts = [
        'start_date' => 'date',
        'end_date'   => 'date',
        'is_national'=> 'boolean',
    ];
}
