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
            [
                'name' => 'Cuddy',
                'email'      => 'jk.rowling@example.com',
                'role'        => 'author',
            ],
            [
                'name' => 'George',
                'email'      => 'george.orwell@example.com',
                'role'        => 'author',
            ],
            [
                'name' => 'Agatha',
                'email'      => 'agatha.christie@example.com',
                'role'       => 'author'
            ],
            [
                'name' => 'Abdur Rahman',
                'email' => 'abdur@example.com',
                'role' => 'student',
            ],
            [
                'name' => 'Beny howel',
                'email' => 'benny@example.com',
                'role' => 'student',
            ],
            [
                'name' => 'Monty sing',
                'email' => 'msing@example.com',
                'role' => 'student',
            ],
            [
                'name' => 'Sompa islam',
                'email' => 'silam@example.com',
                'role' => 'student',
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
