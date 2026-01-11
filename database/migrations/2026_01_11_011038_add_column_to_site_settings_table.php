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
            $table->after('address', function($table){
                $table->string('header_color')->nullable();
                $table->string('navbar_color')->nullable();
                $table->string('footer_color')->nullable();
                $table->string('sidebar_color')->nullable();
                $table->string('auth_bg_image')->nullable();
                $table->string('set_timezone')->nullable();
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('site_settings', function (Blueprint $table) {
            $table->dropColumn(['header_color', 'navbar_color', 'footer_color', 'sidebar_color', 'auth_bg_image', 'set_timezone']);
        });
    }
};
