<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Backup extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'name',
        'file_path',
        'type',
        'size',
        'status',
        'notes',
    ];

    protected $casts = [
        'size' => 'integer',
    ];
}
