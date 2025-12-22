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
        Schema::create('exams', function (Blueprint $table) {
            $table->id();
            $table->string('name');                         // e.g. "Mid Term Examination"
            $table->string('code')->unique();               // e.g. "MID2025-CLS10"
            $table->year('year');                           // e.g. 2025
            $table->string('session');                      // e.g. "2024-2025"
            $table->foreignId('edu_class_id')->constrained('edu_classes')->cascadeOnDelete();
            $table->enum('status', ['Scheduled', 'Completed', 'Canceled', 'Ongoing'])->default('Scheduled');
            $table->enum('type', ['Class Test', 'Mid-Term', 'Final', 'Quiz', 'Practical', 'Other'])->default('Other');
            $table->enum('result', ['publish', 'private'])->default('private');
            $table->date('start_date')->nullable();
            $table->date('end_date')->nullable();
            $table->text('description')->nullable();
            $table->timestamps();
        });


    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('exams');
    }
};
