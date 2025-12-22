<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Staff;

class StaffSeeder extends Seeder
{
    public function run()
    {
        Staff::insert([
            [
                'name' => 'John Doe',
                'email' => 'john@example.com',
                'phone' => '01234567890',
                'gender' => 'male',
                'dob' => '1990-05-12',
                'position' => 'Teacher',
                'department' => 'Mathematics',
                'address' => '123 Main Street',
                'photo' => null,
                'status' => 'active',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Sarah Khan',
                'email' => 'sarah@example.com',
                'phone' => '01987654321',
                'gender' => 'female',
                'dob' => '1992-09-20',
                'position' => 'Accountant',
                'department' => 'Finance',
                'address' => '456 Elm Road',
                'photo' => null,
                'status' => 'active',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}

