<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\BookReservation;
use App\Models\User;
use App\Models\Book;

class BookReservationSeeder extends Seeder
{
    public function run(): void
    {
        $user = User::first();
        $book = Book::first();

        if (!$user || !$book) {
            $this->command->info('Please seed users and books first.');
            return;
        }

        $reservations = [
            [
                'user_id' => $user->id,
                'book_id' => $book->id,
                'reserved_at' => now(),
                'expires_at' => now()->addDays(7),
                'status' => 'active',
            ],
        ];

        foreach ($reservations as $reservation) {
            BookReservation::create($reservation);
        }
    }
}
