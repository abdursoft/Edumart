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
            ['name' => 'view_student', 'group' => 'Student'],
            ['name' => 'create_student', 'group' => 'Student'],
            ['name' => 'edit_student', 'group' => 'Student'],
            ['name' => 'delete_student', 'group' => 'Student'],

            ['name' => 'view_teacher', 'group' => 'Teacher'],
            ['name' => 'create_teacher', 'group' => 'Teacher'],
            ['name' => 'edit_teacher', 'group' => 'Teacher'],
            ['name' => 'delete_teacher', 'group' => 'Teacher'],

            ['name' => 'view_class', 'group' => 'Class'],
            ['name' => 'create_class', 'group' => 'Class'],
            ['name' => 'edit_class', 'group' => 'Class'],
            ['name' => 'delete_class', 'group' => 'Class'],

            ['name' => 'take_attendance', 'group' => 'Attendance'],
            ['name' => 'view_attendance', 'group' => 'Attendance'],

            ['name' => 'view_fees', 'group' => 'Finance'],
            ['name' => 'collect_fees', 'group' => 'Finance'],
            ['name' => 'view_salary', 'group' => 'Finance'],
        ];

        DB::table('permissions')->insert($permissions);
    }
}
