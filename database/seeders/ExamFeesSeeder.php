<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ExamFeesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('exam_fees')->insert([
            [
                'exam_id' => 1,
                'amount' => 500.00,
                'late_fee' => 100.00,
                'due_date' => '2025-10-30',
                'status' => 'Active',
            ],
            [
                'exam_id' => 1,
                'amount' => 600.00,
                'late_fee' => 150.00,
                'due_date' => '2025-10-30',
                'status' => 'Active',
            ],
        ]);

    }
}
