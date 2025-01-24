<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use App\Models\Country;
use App\Models\Category;
use App\Models\Tatami;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Fighter extends Model
{
    use HasFactory;
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
