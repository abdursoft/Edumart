<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NewsNotice extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description',
        'type',
        'publish_date',
        'attachment',
        'status',
        'created_by',
    ];

    protected $casts = [
        'publish_date' => 'date',
    ];

    // Relationship to creator
    public function creator()
    {
        return $this->belongsTo(User::class, 'created_by');
    }
}
