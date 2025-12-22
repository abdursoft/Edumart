<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EduClassSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('edu_classes')->insert([
            ['name' => 'Class 1', 'section' => 'A', 'order' => 1],
            ['name' => 'Class 2', 'section' => 'A', 'order' => 2],
            ['name' => 'Class 3', 'section' => 'A', 'order' => 3],
            ['name' => 'Class 4', 'section' => 'A', 'order' => 4],
            ['name' => 'Class 5', 'section' => 'A', 'order' => 5],
            ['name' => 'Class 6', 'section' => 'Science', 'order' => 6],
            ['name' => 'Class 7', 'section' => 'Science', 'order' => 7],
            ['name' => 'Class 8', 'section' => 'Commerce', 'order' => 8],
            ['name' => 'Class 9', 'section' => 'Arts', 'order' => 9],
            ['name' => 'Class 10', 'section' => 'Science', 'order' => 10],
        ]);
    }
}
