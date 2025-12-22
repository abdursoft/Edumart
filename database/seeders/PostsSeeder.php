<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Post;

class PostsSeeder extends Seeder
{
    public function run()
    {
        Post::insert([
            [
                'title' => 'Welcome to Our Platform',
                'slug' => 'welcome-to-our-platform',
                'excerpt' => 'This is the first official post on our platform.',
                'content' => 'Thank you for joining us! This post announces the beginning of something great.',
                'category_id' => 1,
                'user_id' => 1,
                'thumbnail' => null,
                'status' => 'published',
                'published_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Maintenance Scheduled',
                'slug' => 'maintenance-scheduled',
                'excerpt' => 'Scheduled maintenance will occur this weekend.',
                'content' => 'Please be advised that the system will be down between 2 AM - 4 AM for routine maintenance.',
                'category_id' => 1,
                'user_id' => 1,
                'thumbnail' => null,
                'status' => 'published',
                'published_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}

