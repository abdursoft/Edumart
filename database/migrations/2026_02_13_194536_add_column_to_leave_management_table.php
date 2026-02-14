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
        Schema::table('leave_management', function (Blueprint $table) {
            $table->after('user_id', function($table){
                $table->foreignId('student_id')->nullable()->constrained('student_profiles')->cascadeOnDelete();
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('leave_management', function (Blueprint $table) {
            $table->dropForeign('student_id');
        });
    }
};
