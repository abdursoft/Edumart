<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Page;
use Illuminate\Support\Str;

class PageSeeder extends Seeder
{
    public function run(): void
    {
        $pages = [
            [
                'title' => 'About Us',
                'slug' => Str::slug('About Us'),
                'content' => '<p>Welcome to our library. We offer a wide range of books and resources.</p>',
                'meta_title' => 'About Our Library',
                'meta_description' => 'Learn more about our library and services.',
                'status' => 'published',
            ],
            [
                'title' => 'Contact',
                'slug' => Str::slug('Contact'),
                'content' => '<p>Contact us at contact@library.com or call +123456789.</p>',
                'meta_title' => 'Contact Us',
                'meta_description' => 'Get in touch with our library team.',
                'status' => 'published',
            ],
            [
                'title' => 'Privacy Policy',
                'slug' => Str::slug('Privacy Policy'),
                'content' => '<p>This is our privacy policy page.</p>',
                'meta_title' => 'Privacy Policy',
                'meta_description' => 'Read our privacy policy.',
                'status' => 'published',
            ],
        ];

        foreach ($pages as $page) {
            Page::create($page);
        }
    }
}
