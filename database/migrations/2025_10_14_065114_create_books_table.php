<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('books', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->foreignId('author_id')->constrained('authors')->cascadeOnDelete();
            $table->foreignId('category_id')->constrained('book_categories')->cascadeOnDelete();
            $table->foreignId('book_shelf_id')->nullable()->constrained('book_shelves')->cascadeOnDelete();
            $table->string('isbn')->unique()->nullable();
            $table->integer('publication_year')->nullable();
            $table->integer('pages')->nullable();
            $table->text('summary')->nullable();
            $table->enum('status', ['available', 'unavailable'])->default('available');
            $table->timestamps();
            $table->softDeletes(); // Optional: soft delete
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('books');
    }
};
