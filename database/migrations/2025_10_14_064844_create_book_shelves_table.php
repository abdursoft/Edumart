<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('book_shelves', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // Shelf name/code
            $table->string('location')->nullable(); // Optional location description
            $table->integer('capacity')->nullable(); // Optional maximum number of books
            $table->enum('status', ['active', 'inactive'])->default('active'); // Active/inactive
            $table->timestamps();
            $table->softDeletes(); // Optional: soft delete
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('book_shelves');
    }
};
