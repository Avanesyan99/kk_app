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
        Schema::create('teams', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');

            // Header
            $table->string('title');
            $table->string('short_title')->nullable();
            $table->string('imageUrl')->nullable();
            $table->text('info')->nullable();

            // Contacts
            $table->string('phone', 20)->nullable();
            $table->string('websiteUrl')->nullable();
            $table->string('email')->nullable();

            // location
            $table->unsignedBigInteger('country_id');
            $table->foreign('country_id')->references('id')->on('countries')->onDelete('cascade');
            $table->string('addres')->nullable();
            $table->string('region')->nullable();
            $table->string('city')->nullable();



            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('teams');
    }
};
