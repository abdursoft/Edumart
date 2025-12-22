<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExamSubject extends Model
{
    use HasFactory;

    protected $fillable = [
        'exam_id',
        'subject_id',
        'class_room_id',
        'exam_date',
        'start_time',
        'end_time',
        'mcq_marks',
        'writing_marks',
        'practical_marks',
        'attendance_marks',
        'total_pass_marks',
    ];

    protected $casts = [
        'exam_date'       => 'date',
        'start_time'      => 'datetime:H:i',
        'end_time'        => 'datetime:H:i',
    ];

    // Relationships
    public function exam()
    {
        return $this->belongsTo(Exam::class);
    }

    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }

    public function classRoom()
    {
        return $this->belongsTo(ClassRoom::class);
    }
}
