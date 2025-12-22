<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

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

}
