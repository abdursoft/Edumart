<?php
namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        $users = [
            [
                'name'  => 'John Teacher',
                'email' => 'teacher@example.com',
                'role'  => 'teacher',
            ],
            [
                'name'  => 'Staff Member',
                'email' => 'staff@example.com',
                'role'  => 'staff',
            ],
            [
                'name'  => 'Governing Body',
                'email' => 'governing@example.com',
                'role'  => 'governing',
            ],
            [
                'name'  => 'Committee Member',
                'email' => 'comity@example.com',
                'role'  => 'committee',
            ],
            [
                'name'  => 'Accountant User',
                'email' => 'accountant@example.com',
                'role'  => 'accountant',
            ],
            [
                'name'  => 'Receptionist User',
                'email' => 'receptionist@example.com',
                'role'  => 'receptionist',
            ],
            [
                'name'  => 'Librarian User',
                'email' => 'librarian@example.com',
                'role'  => 'librarian',
            ],
            [
                'name'  => 'Cuddy',
                'email' => 'rowling@example.com',
                'role'  => 'author',
            ],
            [
                'name'  => 'George',
                'email' => 'george@example.com',
                'role'  => 'author',
            ],
            [
                'name'  => 'Georgel',
                'email' => 'georgel@example.com',
                'role'  => 'guardian',
            ],
            [
                'name'  => 'Agatha',
                'email' => 'agatha@example.com',
                'role'  => 'author',
            ],
            [
                'name'  => 'Abdur Rahman',
                'email' => 'abdur@example.com',
                'role'  => 'student',
            ],
            [
                'name'  => 'Beny howel',
                'email' => 'benny@example.com',
                'role'  => 'student',
            ],
            [
                'name'  => 'Monty sing',
                'email' => 'msing@example.com',
                'role'  => 'student',
            ],
            [
                'name'  => 'Sompa islam',
                'email' => 'silam@example.com',
                'role'  => 'student',
            ],
        ];

        foreach ($users as $data) {
            User::create([
                 ...$data,
                'password'          => Hash::make('password'), // Default password
                'email_verified_at' => now(),
            ]);
        }
    }
}
