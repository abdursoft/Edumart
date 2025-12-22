<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ExamSubject;

class ExamSubjectSeeder extends Seeder
{
    public function run(): void
    {
        $data = [
            [
                'exam_id' => 1,
                'subject_id' => 1,
                'class_room_id' => 1,
                'exam_date' => '2025-03-01',
                'start_time' => '10:00:00',
                'end_time' => '12:00:00',
                'mcq_marks' => 20,
                'writing_marks' => 60,
                'practical_marks' => 10,
                'attendance_marks' => 10,
                'pass_marks' => 40,
                'total_marks' => 100,
            ],
            [
                'exam_id' => 1,
                'subject_id' => 2,
                'class_room_id' => 1,
                'exam_date' => '2025-03-02',
                'start_time' => '10:00:00',
                'end_time' => '12:00:00',
                'mcq_marks' => 25,
                'writing_marks' => 50,
                'practical_marks' => 15,
                'attendance_marks' => 10,
                'pass_marks' => 40,
                'total_marks' => 100,
            ],
            [
                'exam_id' => 2,
                'subject_id' => 3,
                'class_room_id' => null, // Optional
                'exam_date' => '2025-04-01',
                'start_time' => '09:00:00',
                'end_time' => '11:00:00',
                'mcq_marks' => 30,
                'writing_marks' => 50,
                'practical_marks' => 10,
                'attendance_marks' => 10,
                'pass_marks' => 40,
                'total_marks' => 100,
            ],
        ];

        ExamSubject::insert($data);
    }
}
