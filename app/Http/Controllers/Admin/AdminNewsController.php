<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Event;
use App\Models\Fighter;
use App\Models\Category;

class AdminNewsController extends Controller
{
    public function index() {
        return view('admin.post.index');
    }
}
