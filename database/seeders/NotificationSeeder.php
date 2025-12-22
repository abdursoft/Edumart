<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Notification;

class NotificationSeeder extends Seeder
{
    public function run()
    {
        Notification::insert([
            [
                'user_id' => 1,
                'title' => 'Welcome to the platform!',
                'message' => 'Your account has been successfully created.',
                'url' => '/dashboard',
                'is_read' => false,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'user_id' => 2,
                'title' => 'New Notice Published',
                'message' => 'A new school notice has been posted. Check it out!',
                'url' => '/news-notices/1',
                'is_read' => false,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
