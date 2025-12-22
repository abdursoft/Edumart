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
        Schema::create('staff', function (Blueprint $table) {
            $table->id();

            $table->string('name');
            $table->string('email')->unique()->nullable();
            $table->string('phone')->nullable();

            $table->enum('gender', ['male', 'female', 'other'])->nullable();
            $table->date('dob')->nullable();

            $table->string('position')->nullable(); // e.g. Teacher, Manager, Clerk
            $table->string('department')->nullable(); // e.g. HR, Accounts, Science

            $table->text('address')->nullable();

            $table->string('photo')->nullable(); // Image path or avatar

            $table->enum('status', ['active', 'inactive', 'resigned'])->default('active');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('staff');
    }
};
