<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('slider_contents', function (Blueprint $table) {
            $table->id();
            $table->foreignId('slider_id')->constrained('sliders')->cascadeOnDelete(); // Link to slider
            $table->string('title')->nullable();          // Content title
            $table->text('description')->nullable();     // Optional description
            $table->string('media_url');                 // Image or video URL
            $table->enum('type', ['image', 'video'])->default('image');    // Media type
            $table->integer('order')->default(0);        // Display order
            $table->enum('status', ['active', 'inactive'])->default('active'); // Status
            $table->timestamps();
            $table->softDeletes();                       // Optional soft delete
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('slider_contents');
    }
};
