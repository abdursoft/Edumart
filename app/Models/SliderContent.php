<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SliderContent extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'slider_id',
        'title',
        'description',
        'media_url',
        'type',
        'order',
        'status',
    ];

    // Relationships
    public function slider()
    {
        return $this->belongsTo(Slider::class);
    }
}
