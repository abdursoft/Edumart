<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DepartmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('departments')->insert([
            ['name' => 'Science', 'code' => 'SCI', 'description' => 'Science Department'],
            ['name' => 'Arts', 'code' => 'ART', 'description' => 'Arts Department'],
            ['name' => 'Commerce', 'code' => 'COM', 'description' => 'Commerce & Business Studies'],
            ['name' => 'Computer Science', 'code' => 'CSE', 'description' => 'IT & Computer Studies'],
            ['name' => 'Administration', 'code' => 'ADM', 'description' => 'School Administration'],
            ['name' => 'Sports', 'code' => 'SPT', 'description' => 'Physical Education and Sports'],
        ]);
    }
}
