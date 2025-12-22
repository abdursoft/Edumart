<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class HolydaysSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('holydays')->insert([
            [
                'title' => 'Independence Day',
                'description' => 'National holiday',
                'start_date' => '2025-03-26',
                'end_date' => '2025-03-27',
                'is_national' => true,
            ],
            [
                'title' => 'Eid-ul-Fitr',
                'description' => 'Religious holiday',
                'start_date' => '2025-04-12',
                'end_date' => '2025-04-14',
                'is_national' => true,
            ],
            [
                'title' => 'Summer Vacation',
                'description' => 'School summer break',
                'start_date' => '2025-06-01',
                'end_date' => '2025-06-30',
                'is_national' => false,
            ],
        ]);
    }
}
