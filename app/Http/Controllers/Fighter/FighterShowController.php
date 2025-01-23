<?php

namespace App\Http\Controllers\Fighter; 

use App\Http\Controllers\Fighter\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;


class FighterShowController extends BaseController
{
    public function __invoke(Fighter $fighter, Country $country, Category $category)
    {

        
        return view('fighter.show', compact('fighter', 'country', 'category'));
    }
}