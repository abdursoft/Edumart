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
        Schema::create('exam_subjects', function (Blueprint $table) {
            $table->id();
            $table->foreignId('exam_id')->constrained('exams')->cascadeOnDelete();
            $table->foreignId('subject_id')->constrained('subjects')->cascadeOnDelete();
            $table->foreignId('class_room_id')->nullable()->constrained('class_rooms')->nullOnDelete(); // Optional exam room
            $table->date('exam_date');
            $table->time('start_time')->nullable();
            $table->time('end_time')->nullable();

            // Marks breakdown
            $table->integer('mcq_marks')->default(0);
            $table->integer('writing_marks')->default(0);
            $table->integer('practical_marks')->default(0);
            $table->integer('attendance_marks')->default(0);

            // Optional: define how much is required to pass per section or total
            $table->decimal('pass_marks')->default(40);
            $table->integer('total_marks')->default(100);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('exam_subjects');
    }
};
