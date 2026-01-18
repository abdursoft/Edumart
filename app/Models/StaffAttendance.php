<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StaffAttendance extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'attendance_by',
        'attendance_edited_by',
        'attendance_date',
        'status',
        'remarks',
    ];

    protected $casts = [
        'attendance_date' => 'date',
    ];

    /* ======================
        Relationships
    ====================== */

    // Staff user
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Attendance taken by
    public function attendanceBy()
    {
        return $this->belongsTo(User::class, 'attendance_by');
    }

    // Attendance taken by
    public function attendanceEditedBy()
    {
        return $this->belongsTo(User::class, 'attendance_edited_by');
    }
}
