<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use HasFactory, Notifiable, HasRoles;

    protected $fillable = [
        'name',
        'email',
        'serial',
        'password',
        'password_token',
        'password_otp',
        'password_otp_hits',
        'login_request',
        'login_permit',
        'designation_id',
        'role',
    ];

    protected $hidden = [
        'password',
        'remember_token',
        'password_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
        'password_otp'      => 'integer',
        'password_otp_hits' => 'integer',
        'login_request'     => 'integer',
    ];

    /**
     * Get the profile associated with the user.
     */
    public function profile(){
        return $this->hasOne(Profile::class);
    }

    /**
     * Get the designation that owns the user.
     */
    public function designation(){
        return $this->belongsTo(Designation::class);
    }

    public static function booted()
    {
        static::creating(function($user){
            $user->serial = time();
        });
    }


    /**
     * Relations
     */
    public function student(){
        return $this->hasOne(StudentProfile::class, 'student_id');
    }

    /**
     * Relation with subjects for teacher
     */
    public function subject(){
        return $this->hasMany(Subject::class, 'teacher_id');
    }

    /**
     * Relation with admitCard
     */
    public function admitCard(){
        return $this->hasMany(ExamAdmitCard::class, 'student_id');
    }

    /**
     * Relation with marksheet
     */
    public function marksheet(){
        return $this->hasMany(ExamMarksheet::class,'student_id');
    }

    /**
     * Relation with certificates
     */
    public function certificate(){
        return $this->hasMany(Certificate::class, 'user_id');
    }

    /**
     * Relation with invoices
     */
    public function invoice(){
        return $this->hasMany(Invoice::class, 'user_id');
    }

}
