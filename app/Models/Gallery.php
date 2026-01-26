<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'type',
        'status',
        'description',
    ];

    protected $casts = [
        'type' => 'string',
        'status' => 'string',
    ];

    /**
     * Relation with contents
     */
    public function contents(){
        return $this->hasMany(GalleryContent::class, 'gallery_content');
    }
}
