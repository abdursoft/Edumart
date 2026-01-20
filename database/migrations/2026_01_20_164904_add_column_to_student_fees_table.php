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
        Schema::table('student_fees', function (Blueprint $table) {
            $table->after('fee_head_id', function($table){
                $table->foreignId('edu_class_id')->constrained('edu_classes')->cascadeOnDelete();
                $table->foreignId('edu_section_id')->nullable()->constrained('edu_sections')->cascadeOnDelete();
                $table->foreignId('edu_group_id')->nullable()->constrained('edu_groups')->cascadeOnDelete();
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('student_fees', function (Blueprint $table) {
            //
        });
    }
};
