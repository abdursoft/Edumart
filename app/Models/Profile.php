<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'avatar',
        'first_name',
        'last_name',
        'phone',
        'gender',
        'date_of_birth',
        'address',
        'city',
        'state',
        'country',
        'post',
        'village',
    ];

    // Relationship to User
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Relationship to student
    public function student(){
        return $this->belongsTo(Student::class, 'student_id');
    }
}
