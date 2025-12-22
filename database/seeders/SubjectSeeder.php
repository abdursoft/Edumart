<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SubjectSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('subjects')->insert([
            ['name' => 'Mathematics', 'code' => 'MATH101', 'edu_class_id' => 1, 'teacher_id' => 3],
            ['name' => 'English', 'code' => 'ENG101', 'edu_class_id' => 1, 'teacher_id' => 1],
            ['name' => 'Physics', 'code' => 'PHY101', 'edu_class_id' => 1, 'teacher_id' => 2],
            ['name' => 'Chemistry', 'code' => 'CHEM101', 'edu_class_id' => 2, 'teacher_id' => 1],
            ['name' => 'Accounting', 'code' => 'ACC101', 'edu_class_id' => 1, 'teacher_id' => 3],
        ]);
    }
}
