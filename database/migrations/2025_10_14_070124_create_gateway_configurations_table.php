<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('gateway_configurations', function (Blueprint $table) {
            $table->id();
            $table->string('name');                       // Gateway name
            $table->enum('type', ['payment', 'sms']);    // Type: payment or sms
            $table->json('config');                       // Configuration details (API keys, credentials, etc.)
            $table->enum('status', ['active', 'inactive'])->default('active'); // Status
            $table->text('notes')->nullable();            // Optional notes
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('gateway_configurations');
    }
};
