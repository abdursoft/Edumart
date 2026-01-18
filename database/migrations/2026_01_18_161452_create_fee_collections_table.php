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
        Schema::create('fee_collections', function (Blueprint $table) {
            $table->id();
            $table->decimal('total_amount')->default(0);
            $table->decimal('paid_amount')->default(0);
            $table->decimal('due_amount')->default();
            $table->enum('payment_method',['Online','Cash','Check','Others']);
            $table->string('payment_note')->nullable();
            $table->date('payment_date');
            $table->foreignId('collected_by')->nullable()->constrained('users')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('fee_collections');
    }
};
