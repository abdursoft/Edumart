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
        Schema::table('exam_subjects', function (Blueprint $table) {
            $table->after('attendance_marks', function($table){
                $table->decimal('obtain_marks')->default(0);
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('exam_subjects', function (Blueprint $table) {
            $table->dropColumn('obtain_marks');
        });
    }
};
