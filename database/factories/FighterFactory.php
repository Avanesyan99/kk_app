<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Fighter;
use App\Models\Category;
use App\Models\Country;
use App\Models\Team;

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
        $weight = random_int(40, 90); // Случайный вес
    
        // Получаем категорию, к которой будет принадлежать этот боец
        $category = Category::where('weight', '>=', $weight)->first();
        
        return [
            'first_name' => $this->faker->firstName(),
            'last_name' => $this->faker->lastName(),
            'weight' => $weight,
            'country_id' => Country::get()->random()->id,
            'team_id' => Team::exists() ? Team::get()->random()->id : Team::factory()->create()->id,
            'category_id' => $category ? $category->id : Category::first()->id, // Если категория не найдена, привязываем к первой
            'birth_date' => $this->faker->date(),
            'grade' => $this->faker->randomElement(['10KYU', '9KYU', '8KYU', '7KYU', '6KYU', '5KYU', '4KYU', '3KYU', '2KYU', '1KYU', '0KYU', '1DAN', '2DAN', '3DAN', '4DAN', '5DAN']),
            'gender' => $this->faker->randomElement(['m', 'f'])
        ];
    }
}
