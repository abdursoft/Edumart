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
        Schema::create('exam_marksheets', function (Blueprint $table) {
            $table->id();

            // Relationships
            $table->foreignId('exam_id')->constrained('exams')->cascadeOnDelete();
            $table->foreignId('student_id')->constrained('users')->cascadeOnDelete();

            // Overall summary for that student in this exam
            $table->integer('total_marks_obtained')->default(0);
            $table->integer('total_full_marks')->default(0);
            $table->decimal('percentage', 5, 2)->default(0); // e.g., 87.50
            $table->enum('grade',['A', 'A+', 'A-', 'B', 'B+', 'B-', 'C', 'D', 'F'])->default('B');
            $table->enum('grade_type',['CGPA','GPA','CLASS'])->default('GPA');                 // e.g., A+, B, etc.
            $table->boolean('is_passed')->default(true);
            $table->string('remarks')->nullable();            // e.g., “Excellent performance”

            // Optional approval/workflow
            $table->enum('status', ['Draft', 'Published'])->default('Draft');

            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('exam_marksheets');
    }
};
