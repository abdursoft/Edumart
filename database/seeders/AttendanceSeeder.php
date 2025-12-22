<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AttendanceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('attendances')->insert([
            [
                'student_id' => 1,
                'edu_class_id' => 1,
                'subject_id' => 1, // e.g. Math
                'class_room_id' => 1,
                'attendance_date' => '2025-10-14',
                'status' => 'Present',
                'remarks' => 'On time',
            ],
            [
                'student_id' => 2,
                'edu_class_id' => 1,
                'subject_id' => 2, // e.g. English
                'class_room_id' => 1,
                'attendance_date' => '2025-10-14',
                'status' => 'Absent',
                'remarks' => 'Sick leave',
            ],
            [
                'student_id' => 3,
                'edu_class_id' => 2,
                'subject_id' => 3,
                'class_room_id' => 2,
                'attendance_date' => '2025-10-14',
                'status' => 'Late',
                'remarks' => 'Arrived 10 minutes late',
            ],
        ]);
    }
}
