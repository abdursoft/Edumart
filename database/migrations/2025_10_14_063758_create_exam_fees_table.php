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
        Schema::create('exam_fees', function (Blueprint $table) {
            $table->id();
            $table->foreignId('exam_id')->constrained('exams')->cascadeOnDelete();

            $table->decimal('amount', 10, 2);            // Base exam fee
            $table->decimal('late_fee', 10, 2)->default(0); // Optional late fee

            $table->date('due_date')->nullable();        // Last date to pay without late fee
            $table->enum('status', ['Active','Inactive'])->default('Active');

            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('exam_fees');
    }
};
