<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EduSection extends Model
{
    protected $fillable = ['name','description','edu_class_id'];

    /**
     * Relation with edu_class
     */
    public function eduClass(){
        return $this->belongsTo(EduClass::class, 'edu_class_id');
    }

    /**
     * Relation with edu group
     */
    public function eduGroup(){
        return $this->hasMany(EduGroup::class, 'edu_section_id');
    }

    /**
     * Relation with student profile
     */
    public function studentProfile(){
        return $this->hasMany(StudentProfile::class, 'edu_section_id');
    }
}
