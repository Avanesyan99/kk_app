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
        Schema::create('events', function (Blueprint $table) {
            $table->id();
            
            $table->string('title');
            $table->enum('type', ['tournament', 'seminar', 'camp']);
            $table->unsignedBigInteger('country_id');
            $table->foreign('country_id')->on('countries')->references('id')->onDelete('cascade');
            $table->string('image')->nullable();
            $table->timestamp('date');
            $table->boolean('is_active')->default('1');
            $table->enum('available', ['international', 'teams-only'])->nullable();
            
            // Contacts
            $table->timestamp('registration_start')->nullable();
            $table->timestamp('registration_end')->nullable();
            $table->string('phone', 20)->nullable();
            $table->string('email')->nullable();
            $table->string('websiteUrl')->nullable();
            $table->string('address')->nullable();
            
            // Information
            $table->text('info'); 
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('events');
    }
};
