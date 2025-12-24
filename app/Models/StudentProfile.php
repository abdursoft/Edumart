<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;

class StudentProfile extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'student_id',
        'reg_number',
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
        'birth_certificate_number'
    ];

    /**
     * Relations
     */
    public function user(){
        return $this->belongsTo(User::class, 'student_id');
    }
    public function parent()
    {
        return $this->belongsTo(User::class, 'parent_id');
    }

    public function eduClass()
    {
        return $this->belongsTo(EduClass::class, 'edu_class_id');
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
