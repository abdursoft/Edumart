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
        Schema::create('profiles', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->nullable()->constrained('users')->cascadeOnDelete(); // links to users table
            $table->foreignId('parent_id')->nullable()->constrained('parent_models')->cascadeOnDelete(); // links to users table
            $table->foreignId('student_id')->nullable()->constrained('students')->cascadeOnDelete(); // links to users table

            $table->string('avatar')->nullable(); // path to avatar image
            $table->string('first_name');
            $table->string('last_name')->nullable();
            $table->string('phone')->nullable();
            $table->enum('gender',['male','female','other'])->nullable(); // male, female, other
            $table->date('date_of_birth')->nullable();

            $table->string('address')->nullable();
            $table->string('city')->nullable();
            $table->string('state')->nullable();
            $table->string('country')->nullable();
            $table->string('post')->nullable();
            $table->string('village')->nullable();

            $table->string('blood_group')->nullable();
            $table->string('religion')->nullable();

            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('profiles');
    }
};
