<?php

namespace App\Http\Controllers\Fighter;

use App\Http\Controllers\Fighter\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;


class FighterIndexController extends BaseController
{
    public function __invoke()
    {
        $fighters = Fighter::all();
        return view('fighter.index', compact('fighters'));
    }
}