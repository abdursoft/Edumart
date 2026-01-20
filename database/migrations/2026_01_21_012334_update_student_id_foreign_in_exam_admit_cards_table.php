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
        Schema::table('exam_admit_cards', function (Blueprint $table) {
            $table->dropForeign(['student_id']);
            $table->foreign('student_id')
                  ->references('id')
                  ->on('student_profiles')
                  ->cascadeOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('exam_admit_cards', function (Blueprint $table) {
            $table->dropColumn('student_id');
        });
    }
};
