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
        Schema::create('class_rooms', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->bigInteger('code');            // e.g. "Room 101"
            $table->integer('capacity')->nullable();  // Number of students it can hold
            $table->string('location')->nullable();   // e.g. "Main Building, 1st Floor"
            $table->enum('type', ['Lecture', 'Lab', 'Auditorium'])->default('Lecture');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('class_rooms');
    }
};
