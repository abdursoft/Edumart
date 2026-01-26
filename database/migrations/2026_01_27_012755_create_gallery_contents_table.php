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
        Schema::create('gallery_contents', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('path');
            $table->string('token');
            $table->string('mimes');
            $table->string('storage')->default('public');
            $table->enum('status', ['Public', 'Private'])->default('Public');

            $table->foreignId('gallery_id')->constrained('galleries')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('gallery_contents');
    }
};
