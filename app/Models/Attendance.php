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

    public function user()
    {
        return $this->belongsTo(User::class, 'student_id');
    }

    public function eduClass()
    {
        return $this->belongsTo(EduClass::class, 'edu_class_id');
    }


    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }

    public function teacher(){
        return $this->belongsTo(User::class, 'teacher_id');
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

    /**
     * Monthly attendance subject percentage for a student in a subject
     * @param $studentId student profile id
     * @param $sub subject id
     * @param $month month number (1-12)
     * @param $year year number (e.g., 2024)
     * @return float attendance percentage  
     */
    public function monthlyAttendanceSubjectPercentage($studentId, $sub, $month, $year){
        $totalDays = $this->where('student_id', $studentId)
                            ->where('subject_id', $sub)
                            ->whereYear('attendance_date', $year)
                            ->whereMonth('attendance_date', $month)
                            ->count();

        if ($totalDays == 0) {
            return 0; // Avoid division by zero
        }

        $presentDays = $this->where('student_id', $studentId)
                            ->where('subject_id', $sub)
                            ->whereYear('attendance_date', $year)
                            ->whereMonth('attendance_date', $month)
                            ->whereIn('status', ['Present'. 'Late', 'Excused'])
                            ->count();

        return round(($presentDays / $totalDays) * 100, 2);
    }

    /**
     * Monthly attendance percentage for a student in a subject
     * @param $studentId student profile id
     * @param $month month number (1-12)
     * @param $year year number (e.g., 2024)
     * @return float attendance percentage  
     */
    public function monthlyAttendancePercentage($studentId, $month, $year){
        $totalDays = $this->where('student_id', $studentId)
                            ->whereYear('attendance_date', $year)
                            ->whereMonth('attendance_date', $month)
                            ->count();

        if ($totalDays == 0) {
            return 0; // Avoid division by zero
        }

        $presentDays = $this->where('student_id', $studentId)
                            ->whereYear('attendance_date', $year)
                            ->whereMonth('attendance_date', $month)
                            ->whereIn('status',['Present', 'Late', 'Excused'])
                            ->count();

        return round(($presentDays / $totalDays) * 100, 2). '%';
    }
}
