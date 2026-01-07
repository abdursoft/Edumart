<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Certificate extends Model
{
    protected $fillable = [
        'user_id',
        'name',
        'issue_date',
        'expiry_date',
        'status',
        'template',
        'notes',
        'edu_class_id'
    ];

    /**
     * Relation with class
     */
    public function eduClass(){
        return $this->belongsTo(EduClass::class, 'edu_class_id');
    }

    /**
     * Relation with user | student
     */
    public function user(){
        return $this->belongsTo(User::class, 'user_id');
    }
}
