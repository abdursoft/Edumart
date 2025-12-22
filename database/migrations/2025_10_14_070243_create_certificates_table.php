<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('certificates', function (Blueprint $table) {
            $table->id();
            $table->string('name');                      // Certificate name/title
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete(); // Recipient user
            $table->date('issue_date')->default(now());  // Issue date
            $table->date('expiry_date')->nullable();     // Expiry date (optional)
            $table->enum('status', ['active', 'expired', 'revoked'])->default('active'); // Certificate status
            $table->string('template')->nullable();      // Optional template reference
            $table->text('notes')->nullable();           // Optional notes
            $table->timestamps();
            $table->softDeletes();                       // Optional soft delete
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('certificates');
    }
};
