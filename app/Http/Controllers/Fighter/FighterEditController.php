<?php

namespace App\Http\Controllers\Fighter; 

use App\Http\Controllers\Fighter\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;


class FighterEditController extends BaseController
{
    public function __invoke(Fighter $fighter)
    {
        $countries = Country::all();
        $categories = Category::all();
        return view('fighter.edit', compact('fighter', 'countries', 'categories'));
    }
}