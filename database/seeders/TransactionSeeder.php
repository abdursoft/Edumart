<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Transaction;
use App\Models\User;
use App\Models\Invoice;

class TransactionSeeder extends Seeder
{
    public function run(): void
    {
        $user = User::first();
        $invoice = Invoice::first();

        if (!$user) {
            $this->command->info('Please seed users first.');
            return;
        }

        $transactions = [
            [
                'user_id' => $user->id,
                'invoice_id' => $invoice?->id,
                'amount' => 150.00,
                'type' => 'debit',
                'payment_method' => 'cash',
                'status' => 'completed',
                'notes' => 'Library membership fee payment',
            ],
            [
                'user_id' => $user->id,
                'invoice_id' => null,
                'amount' => 20.00,
                'type' => 'credit',
                'payment_method' => 'online',
                'status' => 'completed',
                'notes' => 'Refund for overpaid fine',
            ],
        ];

        foreach ($transactions as $transaction) {
            Transaction::create($transaction);
        }
    }
}
