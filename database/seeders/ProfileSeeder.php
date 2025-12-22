<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProfileSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('profiles')->insert([
            [
                'user_id' => 1,
                'first_name' => 'John',
                'last_name' => 'Doe',
                'phone' => '1234567890',
                'gender' => 'Male',
                'date_of_birth' => '1990-05-15',
                'address' => '123 Main Street',
                'city' => 'Dhaka',
                'state' => 'Dhaka',
                'country' => 'Bangladesh',
            ],
            [
                'user_id' => 2,
                'first_name' => 'Jane',
                'last_name' => 'Smith',
                'phone' => '0987654321',
                'gender' => 'Female',
                'date_of_birth' => '1995-07-20',
                'address' => '456 College Road',
                'city' => 'Chittagong',
                'state' => 'Chittagong',
                'country' => 'Bangladesh',
            ],
        ]);
    }
}
