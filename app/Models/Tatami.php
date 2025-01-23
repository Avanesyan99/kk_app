<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tatami extends Model
{
    public function fighters() {
        return $this->hasMany(Fighter::class);
    }
}
