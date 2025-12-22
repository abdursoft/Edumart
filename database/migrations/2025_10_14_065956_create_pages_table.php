<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('pages', function (Blueprint $table) {
            $table->id();
            $table->string('title');                 // Page title
            $table->string('slug')->unique();        // URL-friendly slug
            $table->text('content')->nullable();     // Page content (HTML/Markdown)
            $table->string('meta_title')->nullable(); // SEO meta title
            $table->string('meta_description')->nullable(); // SEO meta description
            $table->enum('status', ['draft', 'published', 'archived'])->default('draft'); // Page status
            $table->timestamps();
            $table->softDeletes();                   // Optional soft delete
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('pages');
    }
};
