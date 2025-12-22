<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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
    ];

    protected $casts = [
        'attendance_date' => 'date',
    ];

    // Relationships
    public function student()
    {
        return $this->belongsTo(User::class, 'student_id');
    }

    public function eduClass()
    {
        return $this->belongsTo(EduClass::class);
    }

    public function eduGroup()
    {
        return $this->belongsTo(EduGroup::class);
    }

    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }
}
