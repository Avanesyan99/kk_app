<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Team extends Model
{
    use HasFactory;
    protected $guarded = '';
    public function fighters() {
        return $this->hasMany(Fighter::class);
    }

    public function events() {
        return $this->belongsToMany(Event::class);
    }

    public function country() {
        return $this->belongsTo(Country::class, 'country_id');
    }
}
