<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    public function fighters() {
        return $this->hasMany(Fighter::class);
    }
}
