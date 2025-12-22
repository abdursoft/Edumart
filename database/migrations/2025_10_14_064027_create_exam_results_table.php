<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExamResultsTable extends Migration
{
    public function up()
    {
        Schema::create('exam_results', function (Blueprint $table) {
            $table->id();

            // Foreign Keys
            $table->foreignId('exam_id')->constrained('exams')->cascadeOnDelete();

            // Marks / Result
            $table->integer('passed')->nullable();
            $table->integer('failed')->nullable();
            $table->string('percentage')->nullable(); // Example: A+, B, C
            $table->enum('status', ['published', 'private'])->default('private');

            $table->text('remarks')->nullable(); // Optional comments

            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('exam_results');
    }
}
