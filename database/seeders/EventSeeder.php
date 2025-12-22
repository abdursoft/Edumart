<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EventSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('events')->insert([
            [
                'title' => 'Annual Sports Day',
                'description' => 'Inter-class sports competition',
                'start_date' => '2025-01-20',
                'end_date' => '2025-01-20',
                'location' => 'School Playground',
                'type' => 'Holiday',
                'is_public' => true,
            ],
            [
                'title' => 'Parent-Teacher Meeting',
                'description' => 'Monthly academic progress discussion',
                'start_date' => '2025-02-05',
                'end_date' => '2025-02-05',
                'location' => 'Main Hall',
                'type' => 'Meeting',
                'is_public' => false,
            ],
            [
                'title' => 'Mid-Term Examination',
                'description' => 'Exams for all classes',
                'start_date' => '2025-03-01',
                'end_date' => '2025-03-10',
                'location' => 'Classrooms',
                'type' => 'Exam',
                'is_public' => true,
            ],
        ]);
    }
}
