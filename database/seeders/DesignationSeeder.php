<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DesignationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('designations')->insert([
            // Academic Leadership
            ['name' => 'Principal', 'category' => 'Academic', 'level' => 'Senior'],
            ['name' => 'Vice Principal', 'category' => 'Academic', 'level' => 'Senior'],

            // Teaching Staff
            ['name' => 'Head Teacher', 'category' => 'Academic', 'level' => 'Senior'],
            ['name' => 'Senior Teacher', 'category' => 'Academic', 'level' => 'Senior'],
            ['name' => 'Assistant Teacher', 'category' => 'Academic', 'level' => 'Junior'],
            ['name' => 'Lecturer', 'category' => 'Academic', 'level' => 'N/A'],

            // Administrative Staff
            ['name' => 'Accountant', 'category' => 'Administrative', 'level' => 'Staff'],
            ['name' => 'Office Assistant', 'category' => 'Administrative', 'level' => 'Staff'],
            ['name' => 'Clerk', 'category' => 'Administrative', 'level' => 'Staff'],

            // Support Staff
            ['name' => 'Librarian', 'category' => 'Support', 'level' => 'Staff'],
            ['name' => 'Lab Assistant', 'category' => 'Support', 'level' => 'Staff'],
            ['name' => 'Security Guard', 'category' => 'Support', 'level' => 'Staff'],
            ['name' => 'Peon', 'category' => 'Support', 'level' => 'Staff'],
        ]);
    }
}
