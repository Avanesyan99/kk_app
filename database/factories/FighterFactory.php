<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Fighter;
use App\Models\Category;
use App\Models\Country;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\=Fighter>
 */
class FighterFactory extends Factory
{

    protected $model = Fighter::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'f_name' => $this->faker->name(),
            's_name' => $this->faker->lastName(),
            'country_id' => Country::get()->random()->id,
            'category_id' => Category::get()->random()->id,
            'weight' => random_int(40, 100),
            'age' => random_int(18, 60),
            'titles' => $this->faker->text
        ];
    }
}
