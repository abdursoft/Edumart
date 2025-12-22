<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'code',
        'type',
        'period',
        'edu_class_id',
        'edu_group_id',
        'teacher_id',
    ];

    // Relationships

    public function eduClass()
    {
        return $this->belongsTo(EduClass::class);
    }

    public function eduGroup()
    {
        return $this->belongsTo(EduGroup::class);
    }

    public function teacher()
    {
        return $this->belongsTo(User::class, 'teacher_id');
    }
}
