<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('contacts', function (Blueprint $table) {
            $table->id();
            $table->string('name');                   // Name of the person contacting
            $table->string('email');                  // Email address
            $table->string('subject')->nullable();    // Subject of the message
            $table->text('message');                  // The message content
            $table->enum('status', ['pending', 'replied', 'closed'])->default('pending'); // Status of the inquiry
            $table->text('reply')->nullable();        // Optional reply message
            $table->timestamps();
            $table->softDeletes();                    // Optional soft delete
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('contacts');
    }
};
