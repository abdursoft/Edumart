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
        Schema::create('events', function (Blueprint $table) {
            $table->id();
            $table->string('title');            // e.g. "Annual Sports Day"
            $table->longText('description')->nullable();
            $table->date('start_date');         // Event start
            $table->date('end_date')->nullable(); // Optional
            $table->string('location')->nullable(); // e.g. "School Ground"
            $table->enum('type', ['Holiday','Meeting','Exam','Workshop','Other'])->default('Other');
            $table->boolean('is_public')->default(true); // If students/teachers can see it
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('events');
    }
};
