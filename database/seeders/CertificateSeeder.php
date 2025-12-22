<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Certificate;
use App\Models\User;

class CertificateSeeder extends Seeder
{
    public function run(): void
    {
        $user = User::first();

        if (!$user) {
            $this->command->info('Please seed users first.');
            return;
        }

        $certificates = [
            [
                'name' => 'Completion Certificate',
                'user_id' => $user->id,
                'issue_date' => now(),
                'expiry_date' => now()->addYears(1),
                'status' => 'active',
                'template' => 'default_template.pdf',
                'notes' => 'Issued for completing the course successfully.',
            ],
            [
                'name' => 'Excellence Certificate',
                'user_id' => $user->id,
                'issue_date' => now(),
                'expiry_date' => null,
                'status' => 'active',
                'template' => 'excellence_template.pdf',
                'notes' => 'Issued for outstanding performance.',
            ],
        ];

        foreach ($certificates as $certificate) {
            Certificate::create($certificate);
        }
    }
}
