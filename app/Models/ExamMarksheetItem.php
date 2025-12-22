<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ExamMarksheetItem extends Model
{
    protected $fillable = [
        'exam_marksheet_id', 'subject_id',
        'mcq_marks', 'writing_marks', 'practical_marks', 'attendance_marks',
        'total_marks', 'is_passed', 'grade',
    ];

    public function marksheet()
    {
        return $this->belongsTo(ExamMarksheet::class,'exam_marksheet_id');
    }

    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }
}
