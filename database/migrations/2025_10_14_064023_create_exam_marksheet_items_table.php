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
        Schema::create('exam_marksheet_items', function (Blueprint $table) {
            $table->id();

            $table->foreignId('exam_marksheet_id')->constrained('exam_marksheets')->cascadeOnDelete();
            $table->foreignId('subject_id')->constrained('subjects')->cascadeOnDelete();

            $table->integer('mcq_marks')->default(0);
            $table->integer('writing_marks')->default(0);
            $table->integer('practical_marks')->default(0);
            $table->integer('attendance_marks')->default(0);
            $table->integer('total_marks')->default(0);
            $table->boolean('is_passed')->default(true);
            $table->enum('grade',['A', 'A+', 'A-', 'B', 'B+', 'B-', 'C', 'D', 'F'])->default('B');

            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('exam_marksheet_items');
    }
};
