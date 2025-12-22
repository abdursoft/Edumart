<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\GatewayConfiguration;

class GatewaySeeder extends Seeder
{
    public function run(): void
    {
        $gateways = [
            [
                'name' => 'Stripe',
                'type' => 'payment',
                'config' => [
                    'key' => 'sk_test_xxx',
                    'secret' => 'sk_test_secret',
                    'currency' => 'USD',
                ],
                'status' => 'active',
                'notes' => 'Primary payment gateway for online payments',
            ],
            [
                'name' => 'Twilio',
                'type' => 'sms',
                'config' => [
                    'account_sid' => 'ACxxxx',
                    'auth_token' => 'xxxx',
                    'from' => '+1234567890',
                ],
                'status' => 'active',
                'notes' => 'SMS gateway for notifications',
            ],
        ];

        foreach ($gateways as $gateway) {
            GatewayConfiguration::create($gateway);
        }
    }
}
