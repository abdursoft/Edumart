<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $permissions = [
            ['name' => 'view_student', 'guard_name' => 'Student'],
            ['name' => 'create_student', 'guard_name' => 'Student'],
            ['name' => 'edit_student', 'guard_name' => 'Student'],
            ['name' => 'delete_student', 'guard_name' => 'Student'],

            ['name' => 'view_teacher', 'guard_name' => 'Teacher'],
            ['name' => 'create_teacher', 'guard_name' => 'Teacher'],
            ['name' => 'edit_teacher', 'guard_name' => 'Teacher'],
            ['name' => 'delete_teacher', 'guard_name' => 'Teacher'],

            ['name' => 'view_class', 'guard_name' => 'Class'],
            ['name' => 'create_class', 'guard_name' => 'Class'],
            ['name' => 'edit_class', 'guard_name' => 'Class'],
            ['name' => 'delete_class', 'guard_name' => 'Class'],

            ['name' => 'take_attendance', 'guard_name' => 'Attendance'],
            ['name' => 'view_attendance', 'guard_name' => 'Attendance'],

            ['name' => 'view_fees', 'guard_name' => 'Finance'],
            ['name' => 'collect_fees', 'guard_name' => 'Finance'],
            ['name' => 'view_salary', 'guard_name' => 'Finance'],
        ];

        DB::table('permissions')->insert($permissions);
    }
}
