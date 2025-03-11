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
        Schema::create('posts', function (Blueprint $table) {
            $table->id();

            $table->string("title");
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('event_id')->nullable();
            $table->unsignedBigInteger('team_id')->nullable();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('event_id')->references('id')->on('events')->onDelete('cascade')->nullable();
            $table->foreign('team_id')->references('id')->on('teams')->onDelete('cascade')->nullable();
            $table->text("text")->nullable();
            $table->string("imageUrl")->nullable();
            $table->unsignedBigInteger("likes")->default(0);
            
            
            $table->enum('status', ['draft', 'pending', 'published'])->default('draft'); // Модерация

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('posts');
    }
};
