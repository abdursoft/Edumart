<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Assignment extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description',
        'edu_class_id',
        'edu_group_id',
        'subject_id',
        'teacher_id',
        'assigned_date',
        'due_date',
        'attachment',
        'status',
    ];

    protected $casts = [
        'assigned_date' => 'date',
        'due_date'      => 'date',
    ];

    // Relationships
    public function eduClass()
    {
        return $this->belongsTo(EduClass::class);
    }

    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }

    public function teacher()
    {
        return $this->belongsTo(User::class, 'teacher_id');
    }
}
