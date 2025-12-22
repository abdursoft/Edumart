<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClassRoutine extends Model
{
    use HasFactory;

    protected $fillable = [
        'edu_class_id',
        'subject_id',
        'class_room_id',
        'day',
        'start_time',
        'end_time',
        'room',
    ];

    // Relationships
    public function eduClass()
    {
        return $this->belongsTo(EduClass::class);
    }

    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }

    /**
     * Relation with class room
     */
    public function classRoom(){
        return $this->belongsTo(ClassRoom::class, 'class_room_id');
    }
}
