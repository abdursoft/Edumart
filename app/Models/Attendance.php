<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use function Symfony\Component\Clock\now;

class Attendance extends Model
{
    use HasFactory;

    protected $fillable = [
        'student_id',
        'edu_class_id',
        'edu_group_id',
        'subject_id',
        'attendance_date',
        'status',
        'remarks',
        'class_room_id'
    ];

    protected $casts = [
        'attendance_date' => 'date',
    ];

    // Relationships
    public function student()
    {
        return $this->belongsTo(StudentProfile::class, 'student_id');
    }

    public function eduClass()
    {
        return $this->belongsTo(EduClass::class, 'edu_class_id');
    }


    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }
}
