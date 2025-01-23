<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use App\Models\Country;
use App\Models\Category;
use App\Models\Tatami;

class Fighter extends Model
{

    protected $guarded = '';

    public function country() {
        return $this->belongsTo(Country::class);
    }

    public function category() {
        return $this->belongsTo(Category::class);
    }

    public function tatami() {
        return $this->belongsTo(Tatami::class);
    }
}
