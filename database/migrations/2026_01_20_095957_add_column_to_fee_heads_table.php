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
        Schema::table('fee_heads', function (Blueprint $table) {
            $table->after('id', function($table){
                $table->foreignId('fee_group_id')->nullable()->constrained('fee_groups')->cascadeOnDelete();
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('fee_heads', function (Blueprint $table) {
            $table->dropColumn('fee_group_id');
        });
    }
};
