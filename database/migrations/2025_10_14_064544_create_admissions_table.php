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
        Schema::create('admissions', function (Blueprint $table) {
            $table->id();
            $table->string('token');
            $table->string('student_id');
            $table->string('name_bangla');
            $table->string('name_english');
            $table->string('birth_certificate_number');
            $table->string('birth_date');
            $table->string('gender');
            $table->string('father_bangla');
            $table->string('father_english');
            $table->string('father_nid');
            $table->string('father_birth_date');
            $table->string('father_mobile');
            $table->string('mother_bangla');
            $table->string('mother_english');
            $table->string('mother_nid');
            $table->string('mother_birth_date');
            $table->string('mother_mobile')->nullable();
            $table->string('permanent_division');
            $table->string('permanent_zilla');
            $table->string('permanent_thana');
            $table->string('permanent_union');
            $table->string('permanent_post');
            $table->string('permanent_address');
            $table->string('current_division');
            $table->string('current_zilla');
            $table->string('current_thana');
            $table->string('current_union');
            $table->string('current_post');
            $table->string('current_address');
            $table->string('previous_division');
            $table->string('previous_zilla');
            $table->string('previous_thana');
            $table->string('previous_institute');
            $table->string('previous_board')->nullable();
            $table->enum('previous_result_type', ['GPA', 'CGPA' , 'Division', 'Class'])->default('GPA');
            $table->string('previous_passing_year');
            $table->string('previous_technology');
            $table->string('previous_exam');
            $table->string('previous_registration');
            $table->string('previous_roll')->nullable();
            $table->string('previous_result');
            $table->string('guardian_relation');
            $table->string('guardian_bangla');
            $table->string('guardian_english');
            $table->string('guardian_mobile');
            $table->string('guardian_nid');
            $table->string('guardian_birth_date');
            $table->string('student_relation')->nullable();
            $table->enum('ethnic_child',['yes','no'])->default('no');
            $table->enum('freedom_family',['yes','no'])->default('no');
            $table->enum('stipend',['yes','no'])->default('no');
            $table->enum('disability',['yes','no'])->default('no');
            $table->string('photo')->nullable();
            $table->string('documents');

            // ✅ Replaced is_approved and is_rejected with a single status field
            $table->enum('status', ['pending', 'approved', 'rejected'])->default('pending');

            $table->enum('is_paid', ['paid','unpaid'])->default('unpaid');
            $table->string('payment_id')->nullable();

            $table->timestamp('updated_at')->useCurrent()->useCurrentOnUpdate(); // Keeping same as original
            $table->timestamp('created_at')->useCurrent();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('admissions');
    }
};
