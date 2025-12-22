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
        Schema::create('edu_classes', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // e.g. "Class 5" or "Grade 8"
            $table->string('section')->nullable(); // e.g. "A", "B", etc.
            $table->integer('order')->nullable(); // for sorting, e.g. 1, 2, 3...
            $table->integer('capacity')->nullable(); // for sorting, e.g. 1, 2, 3...
            $table->integer('total')->nullable(); // for sorting, e.g. 1, 2, 3...
            $table->foreignId('department_id')->nullable()->constrained('departments')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('edu_classes');
    }
};
