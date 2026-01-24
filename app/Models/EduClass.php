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
        return $this->hasMany(StudentProfile::class, 'edu_class_id');
    }

    /**
     * Relation with attendance
     */
    public function attendance(){
        return $this->hasMany(Attendance::class, 'edu_class_id');
    }

    /**
     * Relation with exam
     */
    public function exam(){
        return $this->hasMany(Exam::class, 'edu_class_id');
    }

    /**
     * Relation with class routine
     */
    public function routine(){
        return $this->hasMany(ClassRoutine::class, 'edu_class_id');
    }

    /**
     * Relation with certificate
     */
    public function certificate(){
        return $this->hasMany(Certificate::class, 'edu_class_id');
    }

    /**
     * Relation with edu section
     */
    public function eduSection(){
        return $this->hasMany(EduSection::class, 'edu_class_id');
    }

    /**
     * Relation with student fee
     */
    public function studentFee(){
        return $this->hasMany(StudentFee::class, 'edu_class_id');
    }
}
