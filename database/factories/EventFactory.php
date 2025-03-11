<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Carbon\Carbon;
use App\Models\Event;
use App\Models\Country;

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
            'title' => 'Tournament',
            'type' => $this->faker->randomElement(['tournament', 'seminar', 'camp']),
            'country_id' => Country::get()->random()->id,
            'image' => '1737588894_pexels-eberhardgross-691668.jpg',
            'date' => $this->faker->date(),
            'registration_start' => Carbon::now()->addDays(rand(1, 10)),
            'registration_end' => Carbon::now()->addDays(rand(11, 20)),
            'is_active' => 1,
            'email' => $this->faker->email(),
            'phone' => $this->faker->phoneNumber(20),
            'info' => $this->faker->text
        ];
    }
}
