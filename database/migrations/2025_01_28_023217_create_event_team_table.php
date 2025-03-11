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
        Schema::create('event_team', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('event_id');
            $table->unsignedBigInteger('team_id');
            $table->foreign('event_id')->on('events')->references('id')->onDelete('cascade'); // Связь с таблицей events
            $table->foreign('team_id')->on('teams')->references('id')->onDelete('cascade'); // Связь с таблицей teams
            $table->string('status')->default('participates'); // Поле для хранения статуса

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('event_team');
    }
};
