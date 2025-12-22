<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClassRoutineSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('class_routines')->insert([
            [
                'edu_class_id' => 1,
                'subject_id' => 1,  // e.g. Math
                'day' => 'Monday',
                'start_time' => '09:00:00',
                'end_time' => '10:00:00',
            ],
            [
                'edu_class_id' => 1,
                'subject_id' => 2,  // e.g. English
                'day' => 'Monday',
                'start_time' => '10:15:00',
                'end_time' => '11:15:00',
            ],
            [
                'edu_class_id' => 2,
                'subject_id' => 3,
                'day' => 'Tuesday',
                'start_time' => '09:00:00',
                'end_time' => '10:00:00',
            ],
        ]);
    }
}
