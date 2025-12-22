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
        Schema::create('assignments', function (Blueprint $table) {
            $table->id();
            $table->string('title');                    // Assignment title
            $table->text('description')->nullable();    // Details or instructions
            $table->foreignId('edu_class_id')->constrained('edu_classes')->cascadeOnDelete();
            $table->foreignId('subject_id')->constrained('subjects')->cascadeOnDelete();
            $table->foreignId('teacher_id')->constrained('users')->cascadeOnDelete(); // Teacher who assigned
            $table->date('assigned_date');
            $table->date('due_date')->nullable();
            $table->string('attachment')->nullable();   // Optional file upload
            $table->enum('status', ['Pending','Completed','Overdue'])->default('Pending');
            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('assignments');
    }
};
