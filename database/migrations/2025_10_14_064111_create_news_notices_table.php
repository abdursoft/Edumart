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
        Schema::create('news_notices', function (Blueprint $table) {
            $table->id();

            $table->string('title');
            $table->text('description')->nullable();  // Full notice content

            $table->enum('type', ['news', 'notice', 'event'])->default('news'); // Optional
            $table->date('publish_date')->nullable();

            $table->string('attachment')->nullable(); // File or image path
            $table->enum('status', ['draft', 'published'])->default('draft');

            $table->foreignId('created_by')->nullable()->constrained('users')->nullOnDelete();

            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('news_notices');
    }
};
