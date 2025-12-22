<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('sliders', function (Blueprint $table) {
            $table->id();
            $table->string('name');                       // Slider name/title
            $table->enum('type', ['image', 'video']);    // Slider type
            $table->enum('status', ['active', 'inactive'])->default('active'); // Status
            $table->string('shortcode')->unique();       // Shortcode for embedding
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('sliders');
    }
};
