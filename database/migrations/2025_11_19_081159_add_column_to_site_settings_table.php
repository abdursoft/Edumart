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
            $table->after('union_id', function (Blueprint $table) {
                // Address Info
                $table->string('name_bn')->nullable();
                $table->string('code')->nullable();
                $table->string('gov_id')->nullable();
                $table->date('establish_date')->nullable();
                $table->enum('maintenance',['active','inactive'])->default('inactive');
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
