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
        Schema::table('site_settings', function (Blueprint $table) {
            $table->after('contact_phone', function (Blueprint $table) {
                // Address Info
                $table->string('post')->nullable();
                $table->foreignId('division_id')->nullable()->constrained('divisions')->cascadeOnDelete();
                $table->foreignId('district_id')->nullable()->constrained('districts')->cascadeOnDelete();
                $table->foreignId('thana_id')->nullable()->constrained('thanas')->cascadeOnDelete();
                $table->foreignId('union_id')->nullable()->constrained('unions')->cascadeOnDelete();
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('site_settings', function (Blueprint $table) {
            //
        });
    }
};
