<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class Slider extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'type',
        'status',
        'page_id',
        'post_id',
        'shortcode',
    ];

    /**
     * Get the contents for the slider.
     */
    public function contents(){
        return $this->hasMany(SliderContent::class);
    }

    /**
     * Get page of the slider
     */
    public function page(){
        return $this->belongsTo(Page::class, 'page_id');
    }

    /**
     * Get post of the slider
     */
    public function post(){
        return $this->belongsTo(Post::class, 'post_id');
    }

    // slider boot
    protected static function booted()
    {
        static::deleting(function ($slider) {
            foreach($slider->contents as $content){
                if (Storage::exists($content->media_url)) {
                    Storage::delete($content->media_url);
                }
            }
        });
    }

}
