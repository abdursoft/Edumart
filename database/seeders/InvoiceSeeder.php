<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Invoice;
use App\Models\User;
use Illuminate\Support\Str;

class InvoiceSeeder extends Seeder
{
    public function run(): void
    {
        $user = User::first();

        if (!$user) {
            $this->command->info('Please seed users first.');
            return;
        }

        $invoices = [
            [
                'invoice_number' => 'INV-' . Str::upper(Str::random(6)),
                'user_id' => $user->id,
                'amount' => 150.00,
                'status' => 'pending',
                'due_date' => now()->addDays(7),
                'notes' => 'Library membership fee',
            ],
            [
                'invoice_number' => 'INV-' . Str::upper(Str::random(6)),
                'user_id' => $user->id,
                'amount' => 75.50,
                'status' => 'paid',
                'due_date' => now()->addDays(3),
                'notes' => 'Book late return fine',
            ],
        ];

        foreach ($invoices as $invoice) {
            Invoice::create($invoice);
        }
    }
}
