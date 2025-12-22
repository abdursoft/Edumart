<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('salaries', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete(); // Link to staff
            $table->decimal('basic', 10, 2);      // Basic salary
            $table->decimal('allowance', 10, 2)->default(0); // Allowances
            $table->decimal('deduction', 10, 2)->default(0); // Deductions
            $table->decimal('total', 10, 2);      // Total salary = basic + allowance - deduction
            $table->date('payment_date');         // Date of payment
            $table->enum('status', ['pending', 'paid', 'cancelled'])->default('pending'); // Payment status
            $table->text('notes')->nullable();    // Optional notes
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('salaries');
    }
};
