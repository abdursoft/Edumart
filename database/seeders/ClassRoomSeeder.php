<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClassRoomSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
         DB::table('class_rooms')->insert([
            ['name' => 'Room 101', 'code' => 1001, 'capacity' => 40, 'location' => 'Main Building, 1st Floor', 'type' => 'Lecture'],
            ['name' => 'Room 102', 'code' => 1002, 'capacity' => 35, 'location' => 'Main Building, 1st Floor', 'type' => 'Lecture'],
            ['name' => 'Lab 1', 'code' => 1003, 'capacity' => 25, 'location' => 'Science Building, Ground Floor', 'type' => 'Lab'],
            ['name' => 'Lab 2', 'code' => 2001, 'capacity' => 25, 'location' => 'Science Building, 1st Floor', 'type' => 'Lab'],
            ['name' => 'Auditorium', 'code' => 2002, 'capacity' => 200, 'location' => 'Main Building', 'type' => 'Auditorium'],
        ]);
    }
}
