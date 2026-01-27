<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GalleryContent extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'path',
        'token',
        'mimes',
        'storage',
        'status',
        'gallery_id',
    ];

    protected $casts = [
        'status' => 'string',
    ];

    /**
     * Gallery relation
     */
    public function gallery()
    {
        return $this->belongsTo(Gallery::class, 'gallery_id');
    }
}
