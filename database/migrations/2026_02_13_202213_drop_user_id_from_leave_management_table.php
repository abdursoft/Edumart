<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

use function Laravel\Prompts\table;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('leave_management', function (Blueprint $table) {
            $table->dropForeign(['user_id']);

            $table->unsignedBigInteger('user_id')->nullable()->change();

            $table->foreign('user_id')
                ->references('id')
                ->on('users')
                ->cascadeOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('leave_management', function (Blueprint $table) {
            $table->dropForeign(['user_id']);
        });
    }
};
