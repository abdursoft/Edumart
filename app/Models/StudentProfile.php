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
        'age',
        'dob',
        'type',
        'avatar',
        'phone',
        'parent_id',
        'password',
        'login_permit',

        'reg_number',
        'edu_class_id',
        'edu_section_id',
        'edu_group_id',

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

    /**
     * Relation with edu section
     */
    public function eduSection(){
        return $this->belongsTo(EduSection::class, 'edu_section_id');
    }

    /**
     * Relation with edu group
     */
    public function eduGroup(){
        return $this->belongsTo(EduGroup::class, 'edu_group_id');
    }

    /**
     * Relation with fees
     */
    public function Fees(){
        return $this->hasMany(StudentFee::class, 'student_profile_id');
    }

    /**
     * Relation with leave table
     */
    public function leave(){
        return $this->hasMany(LeaveManagement::class, 'student_id');
    }
}
