<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExamFee extends Model
{
    use HasFactory;

    protected $fillable = [
        'exam_id',
        'amount',
        'late_fee',
        'due_date',
        'status',
    ];

    protected $casts = [
        'due_date' => 'date',
    ];

    // Relationships
    public function exam()
    {
        return $this->belongsTo(Exam::class);
    }
}
