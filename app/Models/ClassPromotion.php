<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ClassPromotion extends Model
{
    protected $fillable = [
        'student_id',
        'from_class_id',
        'from_section_id',
        'to_class_id',
        'to_section_id',
        'status',
        'promotion_date',
        'remarks',
    ];

    public function student()
    {
        return $this->belongsTo(StudentProfile::class,'student_id');
    }

    public function fromClass()
    {
        return $this->belongsTo(EduClass::class, 'from_class_id');
    }

    public function toClass()
    {
        return $this->belongsTo(EduClass::class, 'to_class_id');
    }
}
