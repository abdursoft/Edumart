<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description',
        'start_date',
        'end_date',
        'location',
        'type',
        'is_public',
    ];

    protected $casts = [
        'start_date' => 'date',
        'end_date'   => 'date',
        'is_public'  => 'boolean',
    ];
}
