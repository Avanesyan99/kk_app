<?php

namespace App\Http\Controllers\Fighter;

use App\Http\Controllers\Fighter\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;
use App\Http\Requests\Fighter\FighterFilterRequest;


class FighterIndexController extends BaseController
{
    public function __invoke(FighterFilterRequest $request)
    {

            
        $fighters = Fighter::paginate(15);
        return view('fighter.index', compact('fighters'));
    }
}