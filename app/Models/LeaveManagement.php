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
}
