<?php

namespace App\Http\Controllers\Fighter; 

use App\Http\Controllers\Fighter\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;


class FighterAddController extends BaseController
{
    public function __invoke()
    {
        $countries = Country::all();
        $categories = Category::all();
        return view('fighter.create', compact('countries', 'categories'));
    }
}