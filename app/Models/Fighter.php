<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use App\Models\Country;
use App\Models\Category;
use App\Models\Event;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Fighter extends Model
{
    use HasFactory;
    protected $guarded = '';

    public function team() {
        return $this->belongsTo(Team::class, 'team_id', 'id');
    }

    public function country() {
        return $this->belongsTo(Country::class, 'country_id', 'id');
    }

    public function category() {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }

    public function events() {
        return $this->belongsToMany(Event::class, 'event_fighter', 'fighter_id', 'event_id');
    }
}
