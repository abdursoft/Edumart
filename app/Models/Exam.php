<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Exam extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'code',
        'year',
        'session',
        'edu_class_id',
        'status',
        'type',
        'start_date',
        'end_date'
    ];

    // Relationships
    public function eduClass()
    {
        return $this->belongsTo(EduClass::class);
    }


    /**
     * Relation with exam
     */
    public function examSubject(){
        return $this->hasMany(ExamSubject::class, 'exam_id');
    }

    /**
     * Relation with exam results
     */
    public function examResults()
    {
        return $this->hasMany(ExamResult::class, 'exam_id');
    }

}
