<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Event;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\=Event>
 */
class EventFactory extends Factory
{   
    protected $model = Event::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => $this->faker->word,
            'type' => $this->faker->word,
            'image' => $this->faker->imageUrl(),
            'place' => $this->faker->country(),
            'start_at' => $this->faker->date(),
            'is_active' => true
        ];
    }
}
