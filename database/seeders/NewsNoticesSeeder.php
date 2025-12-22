<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\NewsNotice;

class NewsNoticesSeeder extends Seeder
{
    public function run()
    {
        NewsNotice::insert([
            [
                'title' => 'School Reopening Announcement',
                'description' => 'The school will reopen on 1st November as per government guidelines.',
                'type' => 'notice',
                'publish_date' => now(),
                'status' => 'published',
                'created_by' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Sports Week Event',
                'description' => 'Annual sports week will be held from 10th to 15th December.',
                'type' => 'news',
                'publish_date' => now(),
                'status' => 'published',
                'created_by' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
