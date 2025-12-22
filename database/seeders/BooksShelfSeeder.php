<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\BookShelf;

class BooksShelfSeeder extends Seeder
{
    public function run(): void
    {
        $shelves = [
            ['name' => 'Shelf A', 'location' => 'First Floor - Left Wing', 'capacity' => 100, 'status' => 'active'],
            ['name' => 'Shelf B', 'location' => 'First Floor - Right Wing', 'capacity' => 120, 'status' => 'active'],
            ['name' => 'Shelf C', 'location' => 'Second Floor - Left Wing', 'capacity' => 150, 'status' => 'active'],
        ];

        foreach ($shelves as $shelf) {
            BookShelf::create($shelf);
        }
    }
}
