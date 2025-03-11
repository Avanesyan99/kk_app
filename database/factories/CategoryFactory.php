<?php

namespace Database\Factories;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Event;
use App\Models\Country;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\=Category>
 */
class CategoryFactory extends Factory
{   
    protected $model = Category::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => 'Weight Category',
            'weight' => fake()->randomElement([60, 70, 77, 83, 93]),
            'event_id' => Event::get()->random()->id
        ];
    }
}
