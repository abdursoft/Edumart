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
        Schema::create('holydays', function (Blueprint $table) {
            $table->id();
            $table->string('title');            // e.g. "Independence Day"
            $table->text('description')->nullable();
            $table->date('start_date');         // Holiday start date
            $table->date('end_date')->nullable(); // Optional end date for multi-day holidays
            $table->boolean('is_national')->default(false); // National vs school-specific
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('holydays');
    }
};
