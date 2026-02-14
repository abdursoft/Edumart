<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LeaveManagement extends Model
{
    use HasFactory;

    protected $table = 'leave_management';

    protected $fillable = [
        'start_date',
        'end_date',
        'reason',
        'user_id',
        'user_type',
        'student_id',
        'leaved_by',
    ];

    protected $casts = [
        'start_date' => 'date',
        'end_date'   => 'date',
    ];

    /* ================= Relationships ================= */

    // Leave applicant
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Who approved / created the leave
    public function leavedBy()
    {
        return $this->belongsTo(User::class, 'leaved_by');
    }

    // student profile
    public function student(){
        return $this->belongsTo(StudentProfile::class, 'student_id');
    }


    /**
     * Models functionalities
     * @param $userType leaved user type
     */
    public function userLeave($userType){
        return $this->whereDate('start_date', '<=', now())
            ->whereDate('end_date', '>=', now())
            ->where('user_type', $userType)
            ->get()->pluck('student_id')->toArray();
    }
}
