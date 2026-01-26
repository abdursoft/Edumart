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
        Schema::table('exam_marksheets', function (Blueprint $table) {
            $table->after('exam_id', function($table){
                $table->foreignId('student_id')->constrained('student_profiles')->cascadeOnDelete();
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('exam_marksheets', function (Blueprint $table) {
            $table->dropForeign(['student_id']);
        });
    }
};
