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
            $table->string('f_name');
            $table->string('s_name');
            $table->unsignedInteger('country_id');
            $table->unsignedSmallInteger('category_id');
            $table->unsignedSmallInteger('weight');
            $table->unsignedSmallInteger('age');
            $table->text('titles')->nullable();
            $table->unsignedInteger('tatami_id')->nullable();

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
