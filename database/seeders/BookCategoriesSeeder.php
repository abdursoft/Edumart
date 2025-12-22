<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\BookCategory;

class BookCategoriesSeeder extends Seeder
{
    public function run(): void
    {
        $categories = [
            ['name' => 'Fiction', 'description' => 'Literary works invented by the imagination.', 'status' => 'active'],
            ['name' => 'Non-Fiction', 'description' => 'Based on real events and facts.', 'status' => 'active'],
            ['name' => 'Science Fiction', 'description' => 'Fiction based on futuristic science and technology.', 'status' => 'active'],
            ['name' => 'Mystery', 'description' => 'Fiction dealing with the solution of a crime or unraveling secrets.', 'status' => 'active'],
            ['name' => 'Biography', 'description' => 'An account of someone’s life written by another person.', 'status' => 'active'],
        ];

        foreach ($categories as $category) {
            BookCategory::create($category);
        }
    }
}
