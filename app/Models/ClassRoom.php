<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClassRoom extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'code',
        'capacity',
        'location',
        'type',
    ];

    /**
     * Relation with class routing
     */
    public function routine(){
        return $this->hasMany(ClassRoutine::class, 'class_room_id');
    }
}
