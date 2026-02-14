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
        'teacher_id',
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

    /**
     * Attendance internal functions
     * @param $sub subject id
     * @param $teacher teacher profile id
     * @param $class student class id
     */
    public function todayAttendance($sub, $teacher, $class){
        return $this->where('subject_id', $sub)
                    ->where('attendance_date', now()->format('Y-m-d'))
                    ->where('teacher_id', $teacher)
                    ->where('edu_class_id', $class)
                    ->get()->pluck('student_id')->toArray();
    }

    /**
     * Attendance internal functions
     * @param $sub subject id
     * @param $teacher teacher profile id
     * @param $class student class id
     */
    public function todayPresent($sub, $teacher, $class){
        return $this->where('subject_id', $sub)
                    ->where('attendance_date', now()->format('Y-m-d'))
                    ->where('teacher_id', $teacher)
                    ->where('edu_class_id', $class)
                    ->where('status', 'Present')
                    ->get()->pluck('student_id')->toArray();
    }
}
