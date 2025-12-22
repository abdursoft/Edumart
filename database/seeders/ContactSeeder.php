<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Contact;

class ContactSeeder extends Seeder
{
    public function run(): void
    {
        $contacts = [
            [
                'name' => 'John Doe',
                'email' => 'john@example.com',
                'subject' => 'Inquiry about library membership',
                'message' => 'Hello, I want to know more about your membership plans.',
                'status' => 'pending',
            ],
            [
                'name' => 'Jane Smith',
                'email' => 'jane@example.com',
                'subject' => 'Book request',
                'message' => 'Can you get a copy of "The Great Gatsby" for me?',
                'status' => 'pending',
            ],
        ];

        foreach ($contacts as $contact) {
            Contact::create($contact);
        }
    }
}
