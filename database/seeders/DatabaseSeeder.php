<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Category;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Fighter;
use App\Models\Event;
use App\Models\Country;
use App\Models\Team;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory(10)->create();
        Country::factory(10)->create();
        Team::factory(40)->create();
        Event::factory(10)->create()->each(function ($event) {
            $team = Team::all();
            $event->teams()->attach(
                $team->random(min(10, $team->count()))->pluck('id')->toArray()
            );
        });
        Category::factory(40)->create(); 

        Fighter::factory(400)->create();
    }
}
