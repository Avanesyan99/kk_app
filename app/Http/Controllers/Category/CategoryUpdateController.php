<?php

namespace App\Http\Controllers\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoryIndexController extends Controller
{
    public function __invoke()
    {
        $categories = Category::all();
        return view('category.index', compact('categories'));
    }

}
