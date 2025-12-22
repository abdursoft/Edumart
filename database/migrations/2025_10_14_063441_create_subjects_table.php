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
        Schema::create('subjects', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // e.g. "Mathematics"
            $table->string('code')->nullable(); // e.g. "MATH101"
            $table->enum('type', ['theory', 'lab', 'tech'])->default('theory'); // subject type
            $table->string('period')->nullable(); // e.g. "45m", "1h", "90m"
            $table->foreignId('edu_class_id')->constrained('edu_classes')->cascadeOnDelete();
            $table->foreignId('teacher_id')->nullable()->constrained('users')->nullOnDelete(); // teacher assigned
            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('subjects');
    }
};
