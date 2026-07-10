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
        Schema::table('invoices', function (Blueprint $table) {
            $table->after('status', function($table){
                $table->text('trans_id')->nullable()->comment('Transaction ID from payment gateway');
                $table->text('payment_method')->nullable()->comment('Payment method used for the transaction');
                $table->text('payment_response')->nullable()->comment('Full response from the payment gateway for record keeping and debugging');
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('invoices', function (Blueprint $table) {
            $table->dropColumn(['trans_id', 'payment_method', 'payment_response']);
        });
    }
};
