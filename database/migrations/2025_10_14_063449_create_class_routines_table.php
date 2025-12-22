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
        Schema::create('class_routines', function (Blueprint $table) {
            $table->id();
            $table->foreignId('edu_class_id')->constrained('edu_classes')->cascadeOnDelete();
            $table->foreignId('subject_id')->constrained('subjects')->cascadeOnDelete();
            $table->enum('day', ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']);
            $table->time('start_time');
            $table->time('end_time');
            $table->foreignId('class_room_id')->nullable()->constrained('class_rooms')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('class_routines');
    }
};
