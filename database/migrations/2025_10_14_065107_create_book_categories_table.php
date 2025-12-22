<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('book_categories', function (Blueprint $table) {
            $table->id();
            $table->string('name')->unique(); // Category name
            $table->text('description')->nullable(); // Optional description
            $table->enum('status', ['active', 'inactive'])->default('active'); // Active/inactive
            $table->timestamps();
            $table->softDeletes(); // Optional: soft delete
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('book_categories');
    }
};
