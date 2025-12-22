<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->id();
            $table->string('invoice_number')->unique();               // Unique invoice number
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete(); // Linked user
            $table->decimal('amount', 10, 2);                        // Total amount
            $table->enum('status', ['pending', 'paid', 'cancelled'])->default('pending'); // Payment status
            $table->date('due_date')->nullable();                     // Due date
            $table->text('notes')->nullable();                        // Optional notes
            $table->timestamps();
            $table->softDeletes();                                    // Optional soft delete
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('invoices');
    }
};
