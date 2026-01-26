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
            $table->after('total_marks', function($table){
                $table->decimal('grade_point')->default(0);
                $table->decimal('grade_type')->default(0);
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('exam_marksheet_items', function (Blueprint $table) {
            $table->dropColumn('grade_point','grade_type');
        });
    }
};
