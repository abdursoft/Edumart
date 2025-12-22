<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('roles')->insert([
            ['name' => 'Super Admin', 'description' => 'Full system access'],
            ['name' => 'Admin', 'description' => 'School administrator'],
            ['name' => 'Principal', 'description' => 'School head or director'],
            ['name' => 'Teacher', 'description' => 'Handles teaching and student grading'],
            ['name' => 'Student', 'description' => 'Learner enrolled in the school'],
            ['name' => 'Parent', 'description' => 'Guardian access to student progress'],
            ['name' => 'Accountant', 'description' => 'Manages finances and fees'],
            ['name' => 'Librarian', 'description' => 'Manages school library system'],
            ['name' => 'Receptionist', 'description' => 'Manages communications and front desk'],
        ]);
    }
}
