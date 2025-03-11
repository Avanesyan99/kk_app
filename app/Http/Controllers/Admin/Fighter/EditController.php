<?php

namespace App\Http\Controllers\Admin\Fighter; 

use App\Http\Controllers\Admin\Fighter\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;


class EditController extends BaseController
{
    public function __invoke(Fighter $fighter)
    {
        return view('admin.fighter.edit', compact('fighter'));
    }
}