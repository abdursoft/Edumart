<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        $users = [
            [
                'name' => 'Super Admin',
                'email' => 'admin@example.com',
                'role' => 'admin',
            ],
            [
                'name' => 'John Teacher',
                'email' => 'teacher@example.com',
                'role' => 'teacher',
            ],
            [
                'name' => 'Staff Member',
                'email' => 'staff@example.com',
                'role' => 'staff',
            ],
            [
                'name' => 'Governing Body',
                'email' => 'governing@example.com',
                'role' => 'governing',
            ],
            [
                'name' => 'Committee Member',
                'email' => 'comity@example.com',
                'role' => 'committee',
            ],
            [
                'name' => 'Accountant User',
                'email' => 'accountant@example.com',
                'role' => 'accountant',
            ],
            [
                'name' => 'Receptionist User',
                'email' => 'receptionist@example.com',
                'role' => 'receptionist',
            ],
            [
                'name' => 'Librarian User',
                'email' => 'librarian@example.com',
                'role' => 'librarian',
            ],
        ];

        foreach ($users as $data) {
            User::create([
                ...$data,
                'password' => Hash::make('password'), // Default password
                'email_verified_at' => now(),
            ]);
        }
    }
}
