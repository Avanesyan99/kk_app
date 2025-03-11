<?php

namespace App\Http\Controllers\Category;

use App\Http\Controllers\Category\BaseController;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoryAddController extends BaseController
{
    public function __invoke()
    {
        return view('category.create');
    }

}
