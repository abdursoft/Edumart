<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Author;
use Illuminate\Support\Str;

class AuthorSeeder extends Seeder
{
    public function run(): void
    {
        $authors = [
            [
                'first_name' => 'J.K.',
                'last_name'  => 'Rowling',
                'email'      => 'jk.rowling@example.com',
                'bio'        => 'British author, best known for the Harry Potter series.',
                'dob'        => '1965-07-31',
                'status'     => 'active',
            ],
            [
                'first_name' => 'George',
                'last_name'  => 'Orwell',
                'email'      => 'george.orwell@example.com',
                'bio'        => 'English novelist and essayist, famous for 1984 and Animal Farm.',
                'dob'        => '1903-06-25',
                'status'     => 'active',
            ],
            [
                'first_name' => 'Agatha',
                'last_name'  => 'Christie',
                'email'      => 'agatha.christie@example.com',
                'bio'        => 'English writer known for her 66 detective novels and short stories.',
                'dob'        => '1890-09-15',
                'status'     => 'active',
            ],
        ];

        foreach ($authors as $author) {
            Author::create($author);
        }
    }
}

