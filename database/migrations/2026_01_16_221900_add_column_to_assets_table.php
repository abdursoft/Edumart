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
        Schema::table('assets', function (Blueprint $table) {
            $table->after('status', function ($table) {
                $table->decimal('price')->default(0);
                $table->enum('payment_status', ['completed', 'have_due', 'na'])->default('have_due');
                $table->decimal('advance_amount')->default(0);
                $table->decimal('due_amount')->default();
                $table->enum('payment_method', ['cash', 'check', 'online', 'exchange'])->default('cash');
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('assets', function (Blueprint $table) {
            $table->dropColumn('price','payment_status','advance_amount','due_amount','payment_method');
        });
    }
};
