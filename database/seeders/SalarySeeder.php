<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Salary;
use App\Models\User;
use Carbon\Carbon;

class SalarySeeder extends Seeder
{
    public function run(): void
    {
        $user = User::first();

        if (!$user) {
            $this->command->info('Please seed staff first.');
            return;
        }

        $salaries = [
            [
                'user_id' => $user->id,
                'basic' => 50000.00,
                'allowance' => 5000.00,
                'deduction' => 2000.00,
                'total' => 53000.00,
                'payment_date' => Carbon::now(),
                'status' => 'paid',
                'notes' => 'Monthly salary for October',
            ],
            [
                'user_id' => $user->id,
                'basic' => 50000.00,
                'allowance' => 4500.00,
                'deduction' => 1500.00,
                'total' => 53000.00,
                'payment_date' => Carbon::now()->subMonth(),
                'status' => 'paid',
                'notes' => 'Monthly salary for September',
            ],
        ];

        foreach ($salaries as $salary) {
            Salary::create($salary);
        }
    }
}
