<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ExamMarksheet extends Model
{
    protected $fillable = [
        'exam_id', 'student_id', 'total_marks_obtained', 'total_full_marks',
        'percentage', 'grade', 'is_passed', 'remarks', 'status'
    ];

    public function exam() {
        return $this->belongsTo(Exam::class);
    }

    public function student() {
        return $this->belongsTo(StudentProfile::class,'student_id');
    }

    public function items() {
        return $this->hasMany(ExamMarksheetItem::class);
    }
}
