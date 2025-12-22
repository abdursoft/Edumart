<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SiteSettingSeeder extends Seeder
{
    public function run()
    {
        DB::table('site_settings')->insert([
            'site_name' => 'My Awesome Website',
            'logo' => 'uploads/logo.png',
            'favicon' => 'uploads/favicon.ico',
            'theme' => 'default',
            'contact_email' => 'admin@example.com',
            'contact_phone' => '+1234567890',
            'address' => '123 Main Street, City, Country',
            'social_links' => json_encode([
                'facebook' => 'https://facebook.com/example',
                'twitter' => 'https://twitter.com/example',
                'instagram' => 'https://instagram.com/example',
            ]),
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
