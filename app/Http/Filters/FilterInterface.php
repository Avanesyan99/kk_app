<?php

namespace App\Http\Filters;

use Illuminate\Database\Eloquent\Builder;

class FilterInterface {

    public function apply(Builder $builder) {
        
    }

}