<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AssignmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('assignments')->insert([
            [
                'title' => 'Math Homework 1',
                'description' => 'Solve all exercises from Chapter 2',
                'edu_class_id' => 1,
                'subject_id' => 1, // Math
                'teacher_id' => 3,
                'assigned_date' => '2025-10-14',
                'due_date' => '2025-10-20',
                'status' => 'Pending',
            ],
            [
                'title' => 'English Essay',
                'description' => 'Write an essay on "My Favorite Book"',
                'edu_class_id' => 1,
                'subject_id' => 2, // English
                'teacher_id' => 2,
                'assigned_date' => '2025-10-14',
                'due_date' => '2025-10-21',
                'status' => 'Pending',
            ],
            [
                'title' => 'Physics Lab Report',
                'description' => 'Complete the experiment report for experiment 3',
                'edu_class_id' => 3,
                'subject_id' => 3, // Physics
                'teacher_id' => 5,
                'assigned_date' => '2025-10-14',
                'due_date' => '2025-10-18',
                'status' => 'Pending',
            ],
        ]);
    }
}
