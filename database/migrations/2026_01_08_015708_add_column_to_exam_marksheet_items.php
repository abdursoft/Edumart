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
        Schema::table('exam_marksheet_items', function (Blueprint $table) {
            $table->after('attendance_marks', function($table){
                $table->bigInteger('obtain_marks');
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('exam_marksheet_items', function (Blueprint $table) {
            $table->dropColumn('obtain_marks');
        });
    }
};
