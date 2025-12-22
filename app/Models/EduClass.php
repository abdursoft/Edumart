<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EduClass extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'section',
        'order',
        'capacity',
        'total',
        'department_id'
    ];

    /**
     * Relation with department
     */
    public function department(){
        return $this->belongsTo(Department::class, 'department_id');
    }

    /**
     * Relation with student table
     */
    public function student(){
        return $this->hasMany(Student::class, 'edu_class_id');
    }

    /**
     * Relation with exam
     */
    public function exam(){
        return $this->hasMany(Exam::class, 'edu_class_id');
    }
}
