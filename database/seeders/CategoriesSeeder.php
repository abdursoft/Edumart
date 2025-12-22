<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;

class CategoriesSeeder extends Seeder
{
    public function run()
    {
        Category::insert([
            [
                'name' => 'General',
                'slug' => 'general',
                'description' => 'General purpose category',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Sports',
                'slug' => 'sports',
                'description' => 'Sports-related category',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Football',
                'slug' => 'football',
                'description' => 'All about football',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
