<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;


class Country extends Model
{
    use HasFactory;
    protected $guarded = '';

    public function fighters() {
        return $this->hasMany(Fighter::class);
    }
    
    public function events() {
        return $this->hasMany(Event::class);
    }

    public function teams() {
        return $this->hasMany(Team::class);
    }
}
