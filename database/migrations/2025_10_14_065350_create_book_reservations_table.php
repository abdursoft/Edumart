<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('book_reservations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete(); // User who reserved
            $table->foreignId('book_id')->constrained('books')->cascadeOnDelete(); // Reserved book
            $table->date('reserved_at')->default(now()); // Reservation date
            $table->date('expires_at')->nullable(); // Optional expiration date
            $table->enum('status', ['active', 'completed', 'cancelled'])->default('active');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('book_reservations');
    }
};

