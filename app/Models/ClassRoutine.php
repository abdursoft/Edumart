<?php

namespace App\Models;

use Carbon\Carbon;
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
        'edu_section_id',
        'edu_group_id'
    ];



    public function getStatusAttribute(){
        $now = now();

        $start = Carbon::createFromTimeString($this->start_time);
        $end   = Carbon::createFromTimeString($this->end_time);

        if ($now->between($start, $end)) {
            return 'Started';
        }

        if ($now->lt($start)) {
            return 'Upcoming';
        }

        return 'Ended';
    }

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
     * Relation with section
     */
    public function eduSection(){
        return $this->belongsTo(EduSection::class, 'edu_section_id');
    }

    /**
     * Relation with edu group
     */
    public function eduGroup(){
        return $this->belongsTo(EduGroup::class, 'edu_group_id');
    }

    /**
     * Relation with class room
     */
    public function classRoom(){
        return $this->belongsTo(ClassRoom::class, 'class_room_id');
    }
}
