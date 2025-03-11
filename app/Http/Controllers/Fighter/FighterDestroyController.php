<?php

namespace App\Http\Controllers\Fighter;

use App\Http\Controllers\Fighter\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;


class FighterDestroyController extends BaseController
{
    public function __invoke(Fighter $fighter)
    {
        $fighter->delete();
        return redirect()->route('fighter.index');
    }
}