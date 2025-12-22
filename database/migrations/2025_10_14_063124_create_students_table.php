<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();

            // Basic info
            $table->string('name');
            $table->unsignedBigInteger('student_id')->unique();
            $table->integer('age')->nullable();
            $table->string('phone')->nullable();

            // Relations
            $table->foreignId('parent_id')->constrained('parent_models')->cascadeOnDelete();
            $table->foreignId('edu_class_id')->constrained('edu_classes')->cascadeOnDelete();

            // Father Info
            $table->string('fa_name_en');
            $table->string('fa_name_bn');
            $table->string('fa_mobile');
            $table->string('fa_nid')->nullable();
            $table->date('fa_dob')->nullable();

            // Mother Info
            $table->string('mo_name_en');
            $table->string('mo_name_bn');
            $table->string('mo_mobile');
            $table->string('mo_nid')->nullable();
            $table->date('mo_dob')->nullable();

            // Address Info
            $table->foreignId('division_id')->nullable()->constrained('divisions')->cascadeOnDelete();
            $table->foreignId('district_id')->nullable()->constrained('districts')->cascadeOnDelete();
            $table->foreignId('thana_id')->nullable()->constrained('thanas')->cascadeOnDelete();
            $table->foreignId('union_id')->nullable()->constrained('unions')->cascadeOnDelete();
            $table->string('post')->nullable();
            $table->text('address')->nullable();

            // Login
            $table->string('password');
            $table->string('password_token')->nullable();
            $table->bigInteger('password_otp')->default(0);
            $table->string('password_otp_hits')->default(0);
            $table->string('login_request')->default(0);
            $table->enum('login_permit', ['allowed', 'blocked'])->default('allowed');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('students');
    }
};
