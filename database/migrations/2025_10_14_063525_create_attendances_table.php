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
        Schema::create('attendances', function (Blueprint $table) {
            $table->id();
            $table->foreignId('student_id')->constrained('students')->cascadeOnDelete(); // assuming students are users
            $table->foreignId('teacher_id')->nullable()->constrained('users')->cascadeOnDelete(); // assuming students are users
            $table->foreignId('subject_id')->nullable()->constrained('subjects')->nullOnDelete();
            $table->foreignId('edu_class_id')->constrained('edu_classes')->cascadeOnDelete();
            $table->foreignId('class_room_id')->constrained('class_rooms')->cascadeOnDelete();
            $table->date('attendance_date');
            $table->enum('status', ['Present','Absent','Late','Excused'])->default('Present');
            $table->text('remarks')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('attendances');
    }
};
