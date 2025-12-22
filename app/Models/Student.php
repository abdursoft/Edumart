<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;

class Student extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'student_id',
        'age',
        'phone',
        'parent_id',
        'edu_class_id',
        'password',
        'login_permit',

        'fa_name_en',
        'fa_name_bn',
        'fa_mobile',
        'fa_nid',
        'fa_dob',

        'mo_name_en',
        'mo_name_bn',
        'mo_mobile',
        'mo_nid',
        'mo_dob',

        'division_id',
        'district_id',
        'thana_id',
        'union_id',
        'post',
        'address',

        'password_token',
        'password_otp',
        'password_otp_hits',
        'login_request',
        'login_permit',
        'birth_certificate_number'
    ];

    protected $hidden = [
        'password',
        'password_token',
        'password_otp',
        'password_otp_hits',
        'login_request',
        'login_permit',
    ];

    /**
     * Relations
     */
    public function parent()
    {
        return $this->belongsTo(ParentModel::class, 'parent_id');
    }

    public function eduClass()
    {
        return $this->belongsTo(EduClass::class, 'edu_class_id');
    }

    public function profile(){
        return $this->hasOne(Profile::class, 'student_id');
    }

    public function division()
    {
        return $this->belongsTo(Division::class);
    }

    public function district()
    {
        return $this->belongsTo(District::class);
    }

    public function thana()
    {
        return $this->belongsTo(Thana::class);
    }

    public function union()
    {
        return $this->belongsTo(Union::class);
    }
}
