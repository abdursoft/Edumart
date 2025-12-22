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
        Schema::create('class_promotions', function (Blueprint $table) {
            $table->id();

            // Student
            $table->foreignId('student_id')->constrained('students')->cascadeOnDelete();

            // Previous class & section
            $table->foreignId('from_class_id')->constrained('edu_classes')->cascadeOnDelete();

            // Promoted class & section
            $table->foreignId('to_class_id')->constrained('edu_classes')->cascadeOnDelete();

            // Promotion details
            $table->enum('status', ['Promoted','Failed','On Hold'])->default('Promoted');
            $table->date('promotion_date')->nullable();

            $table->text('remarks')->nullable();

            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('class_promotions');
    }
};
