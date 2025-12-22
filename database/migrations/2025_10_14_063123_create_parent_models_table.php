<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('parent_models', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->nullable();
            $table->string('phone');
            $table->string('address')->nullable();
            $table->string('password')->default(Hash::make('password'));

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
        Schema::dropIfExists('parent_models');
    }
};
