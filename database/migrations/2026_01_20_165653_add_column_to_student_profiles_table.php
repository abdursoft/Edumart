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
        Schema::table('student_profiles', function (Blueprint $table) {
            $table->after('edu_class_id', function($table){
                $table->string('avatar')->nullable();
                $table->date('dob')->nullable();
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
        Schema::table('student_profiles', function (Blueprint $table) {
            //
        });
    }
};
