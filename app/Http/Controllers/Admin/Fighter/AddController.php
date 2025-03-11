<?php

namespace App\Http\Controllers\Admin\Fighter; 

use App\Http\Controllers\Admin\Fighter\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;


class AddController extends BaseController
{
    public function __invoke()
    {
        
        return view('admin.fighter.create');
    }
}