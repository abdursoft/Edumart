<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ParentModel extends Model
{
    use HasFactory;

    protected $table = 'parent_models';

    /**
     * The attributes that are mass assignable.
     */
    protected $fillable = [
        'name',
        'email',
        'phone',
        'address',
        'password',
        'password_token',
        'password_otp',
        'password_otp_hits',
        'login_request',
        'login_permit',
    ];

    /**
     * The attributes that should be hidden when converting to array or JSON.
     */
    protected $hidden = [
        'password',
        'password_token',
        'password_otp',
    ];

    /**
     * Define relationship: One parent has many students.
     */
    public function students()
    {
        return $this->hasMany(Student::class, 'parent_id');
    }
}
