<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExamAdmitCard extends Model
{
    use HasFactory;

    protected $fillable = [
        'exam_id',
        'student_id',
        'issue_date',
        'status',
    ];

    protected $casts = [
        'issue_date' => 'date',
    ];

    // Relationships
    public function exam()
    {
        return $this->belongsTo(Exam::class);
    }

    public function student()
    {
        return $this->belongsTo(StudentProfile::class, 'student_id');
    }
}
