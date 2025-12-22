<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BookReservation extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'book_id',
        'reserved_at',
        'expires_at',
        'status',
    ];

    protected $casts = [
        'reserved_at' => 'date',
        'expires_at' => 'date',
    ];

    // Relationships
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function book()
    {
        return $this->belongsTo(Book::class);
    }
}
