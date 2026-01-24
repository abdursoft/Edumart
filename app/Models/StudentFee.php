<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentFee extends Model
{
    use HasFactory;

    protected $table = 'student_fees';

    protected $fillable = [
        'amount',
        'status',
        'due_date',
        'fee_head_id',
        'student_id',
        'edu_class_id',
        'edu_section_id',
        'edu_group_id',
        'invoice_id',
        'student_profile_id'
    ];

    protected $casts = [
        'amount'   => 'decimal:2',
        'due_date' => 'date',
    ];

    /* ================= Relationships ================= */

    public function feeHead()
    {
        return $this->belongsTo(FeeHead::class);
    }

    public function student()
    {
        return $this->belongsTo(User::class, 'student_id');
    }

    public function eduClass(){
        return $this->belongsTo(EduClass::class, 'edu_class_id');
    }

    public function eduSection(){
        return $this->belongsTo(EduSection::class, 'edu_section_id');
    }

    public function eduGroup(){
        return $this->belongsTo(EduGroup::class, 'edu_group_id');
    }

    public function studentProfile(){
        return $this->belongsTo(StudentProfile::class, 'student_profile_id');
    }

    public function feeCollection(){
        return $this->hasMany(FeeCollection::class, 'fee_id');
    }

    /* ================= Scopes ================= */

    public function scopeDue($query)
    {
        return $query->where('status', 'Due');
    }

    public function scopePaid($query)
    {
        return $query->where('status', 'Paid');
    }

    public function scopePartial($query)
    {
        return $query->where('status', 'Partial');
    }

    public function scopeOverdue($query)
    {
        return $query
            ->where('status', '!=', 'Paid')
            ->whereDate('due_date', '<', now());
    }
}
