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
        Schema::table('sliders', function (Blueprint $table) {
            $table->foreignId('page_id')->nullable()->constrained('pages')->cascadeOnDelete()->after('status');
            $table->foreignId('post_id')->nullable()->constrained('posts')->cascadeOnDelete()->after('page_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('sliders', function (Blueprint $table) {
            $table->dropColumn('page_id','post_id');
        });
    }
};
