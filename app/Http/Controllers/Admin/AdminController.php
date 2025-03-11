<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Event;
use App\Models\Fighter;
use App\Models\Category;

class AdminController extends Controller
{
    public function __invoke() {
        $events = Event::all();
        $fighters = Fighter::all();
        $categories = Category::all();
        return view('admin.main', compact('events', 'fighters', 'categories'));
    }
}
