<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Book extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'title',
        'author_id',
        'category_id',
        'book_shelf_id',
        'isbn',
        'publication_year',
        'pages',
        'summary',
        'status',
    ];

    // Relationships
    public function author()
    {
        return $this->belongsTo(User::class, 'author_id');
    }

    public function category()
    {
        return $this->belongsTo(BookCategory::class);
    }

    public function shelf()
    {
        return $this->belongsTo(BookShelf::class, 'book_shelf_id');
    }
}
