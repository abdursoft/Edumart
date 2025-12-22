<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ExamAdmitCardSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('exam_admit_cards')->insert([
            [
                'exam_id' => 1,
                'issue_date' => '2025-10-25',
                'status' => 'Issued',
            ],
            [
                'exam_id' => 1,
                'issue_date' => '2025-10-25',
                'status' => 'Issued',
            ],
        ]);
    }
}
