<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Book;
use App\Models\Author;
use App\Models\BookCategory;

class BooksSeeder extends Seeder
{
    public function run(): void
    {
        $authors = Author::all();
        $categories = BookCategory::all();

        if ($authors->isEmpty() || $categories->isEmpty()) {
            $this->command->info('Please seed authors and categories first.');
            return;
        }

        $books = [
            [
                'title' => 'Harry Potter and the Philosopher\'s Stone',
                'author_id' => $authors->where('last_name', 'Rowling')->first()->id,
                'category_id' => $categories->where('name', 'Fiction')->first()->id,
                'isbn' => '9780747532699',
                'publication_year' => 1997,
                'pages' => 223,
                'summary' => 'The first book in the Harry Potter series.',
                'status' => 'available',
            ],
            [
                'title' => '1984',
                'author_id' => $authors->where('last_name', 'Orwell')->first()->id,
                'category_id' => $categories->where('name', 'Science Fiction')->first()->id,
                'isbn' => '9780451524935',
                'publication_year' => 1949,
                'pages' => 328,
                'summary' => 'A dystopian novel set in a totalitarian society.',
                'status' => 'available',
            ],
            [
                'title' => 'Murder on the Orient Express',
                'author_id' => $authors->where('last_name', 'Christie')->first()->id,
                'category_id' => $categories->where('name', 'Mystery')->first()->id,
                'isbn' => '9780007119318',
                'publication_year' => 1934,
                'pages' => 256,
                'summary' => 'Detective Hercule Poirot investigates a murder on a train.',
                'status' => 'available',
            ],
        ];

        foreach ($books as $book) {
            Book::create($book);
        }
    }
}
