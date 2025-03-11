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
        Schema::create('fighters', function (Blueprint $table) {
            $table->id();

            // Important
            $table->string('first_name');
            $table->string('middle_name')->nullable();
            $table->string('last_name');
            $table->string('imageUrl')->nullable();
            $table->date('birth_date');
            $table->enum('gender', ['m', 'f'])->default('m');
            
            // Location
            $table->unsignedBigInteger('country_id');
            $table->foreign('country_id')->references('id')->on('countries')->onDelete('cascade');
            $table->string('address')->nullable();
            $table->string('region')->nullable();
            $table->string('city')->nullable();
            $table->unsignedBigInteger('category_id');
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
            
            
            // General Info 
            $table->unsignedTinyInteger('weight');
            $table->unsignedTinyInteger('height')->nullable();
            $table->text('titles')->nullable();
            $table->string('grade')->nullable();
            $table->unsignedBigInteger('team_id');
            $table->foreign('team_id')->references('id')->on('teams')->onDelete('cascade');
            $table->string('coach')->nullable();
            $table->string('school')->nullable();
            
            // Contacts
            $table->string('phone', 20)->nullable();
            $table->string('email')->nullable();
            
            
            $table->timestamps();
            

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('fighters');
    }
};
