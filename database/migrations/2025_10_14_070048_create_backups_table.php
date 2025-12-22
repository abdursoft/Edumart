<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('backups', function (Blueprint $table) {
            $table->id();
            $table->string('name');                     // Backup name/title
            $table->string('file_path');                // Path or URL to the backup file
            $table->enum('type', ['database', 'files', 'full'])->default('full'); // Backup type
            $table->bigInteger('size')->nullable();     // File size in bytes
            $table->enum('status', ['pending', 'completed', 'failed'])->default('pending'); // Backup status
            $table->text('notes')->nullable();          // Optional notes
            $table->timestamps();
            $table->softDeletes();                      // Optional soft delete
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('backups');
    }
};
