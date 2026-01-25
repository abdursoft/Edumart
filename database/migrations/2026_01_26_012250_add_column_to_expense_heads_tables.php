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
        Schema::table('expense_heads', function (Blueprint $table) {
            $table->after('name', function($table){
                $table->decimal('amount')->default(0);
                $table->enum('is_recurring', ['Yes','No'])->default('No');
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('expense_heads', function (Blueprint $table) {
            $table->dropColumn('amount','is_recurring');
        });
    }
};
