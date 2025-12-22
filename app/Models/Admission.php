<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Admission extends Model
{
    use HasFactory;

    protected $table = 'admissions';

    public $timestamps = false; // Using custom timestamps

    protected $fillable = [
        'token',
        'student_id',
        'name_bangla',
        'name_english',
        'birth_certificate_number',
        'birth_date',
        'gender',
        'father_bangla',
        'father_english',
        'father_nid',
        'father_birth_date',
        'father_mobile',
        'mother_bangla',
        'mother_english',
        'mother_nid',
        'mother_birth_date',
        'mother_mobile',
        'permanent_division',
        'permanent_zilla',
        'permanent_thana',
        'permanent_union',
        'permanent_post',
        'permanent_address',
        'current_division',
        'current_zilla',
        'current_thana',
        'current_union',
        'current_post',
        'current_address',
        'previous_division',
        'previous_zilla',
        'previous_thana',
        'previous_institute',
        'previous_board',
        'previous_result_type',
        'previous_passing_year',
        'previous_technology',
        'previous_exam',
        'previous_registration',
        'previous_roll',
        'previous_result',
        'guardian_relation',
        'guardian_bangla',
        'guardian_english',
        'guardian_mobile',
        'guardian_nid',
        'guardian_birth_date',
        'student_relation',
        'ethnic_child',
        'freedom_family',
        'stipend',
        'disability',
        'photo',
        'documents',
        'status',
        'is_paid',
        'payment_id',
        'updated_at',
        'created_at',
    ];

    protected $casts = [
        'created_at' => 'datetime',
    ];
}
