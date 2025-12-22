<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ExamSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('exams')->insert([
            [
                'name' => 'Mid Term',
                'code' => 'MID2025-C1',
                'year' => 2025,
                'session' => '2024-2025',
                'edu_class_id' => 1,
                'status' => 'Scheduled',
                'type' => 'Mid-Term',
            ],
            [
                'name' => 'Final Exam',
                'code' => 'FIN2025-C1',
                'year' => 2025,
                'session' => '2024-2025',
                'edu_class_id' => 1,
                'status' => 'Scheduled',
                'type' => 'Final',
            ],
        ]);

    }
}
