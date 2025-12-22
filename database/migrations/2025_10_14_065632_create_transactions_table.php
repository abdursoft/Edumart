<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete(); // User making the transaction
            $table->foreignId('invoice_id')->nullable()->constrained('invoices')->cascadeOnDelete(); // Linked invoice (optional)
            $table->decimal('amount', 10, 2); // Transaction amount
            $table->enum('type', ['credit', 'debit']); // Credit or debit
            $table->enum('payment_method', ['cash', 'card', 'online'])->nullable(); // Payment method
            $table->enum('status', ['pending', 'completed', 'failed'])->default('pending'); // Status
            $table->text('notes')->nullable(); // Optional notes
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};
