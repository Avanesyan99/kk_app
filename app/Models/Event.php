<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;
    protected $guarded = '';

    public function teams() {
        return $this->belongsToMany(Team::class, 'event_team', 'event_id', 'team_id');
    }

    public function country() {
        return $this->belongsTo(Country::class, 'country_id');
    }
}
