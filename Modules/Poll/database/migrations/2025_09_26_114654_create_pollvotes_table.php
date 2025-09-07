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
        Schema::create('pollvotes', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreignId('poll_id')->references('id')->on('products')->onDelete('cascade');
            $table->foreignId('poll_option_id')->references('id')->on('polloptions')->onDelete('cascade');
            $table->timestamps();

            $table->unique(['user_id', 'poll_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pollvotes');
    }
};
