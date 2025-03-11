<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Fighter;
use App\Models\Category;
use App\Models\Country;
use App\Models\Team;
use App\Models\User;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\=Team>
 */
class TeamFactory extends Factory
{

    protected $model = Team::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        return [
            'user_id' => User::get()->random()->where('role', 'team_president')->value('id'),
            'title' => $this->faker->word() . 'Dojo',
            'country_id' => Country::get()->random()->id
        ];
    }
}
