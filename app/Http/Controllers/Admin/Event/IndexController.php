<?php

namespace App\Http\Controllers\Admin\Event;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Event;
use App\Models\Country;
use App\Models\Category;
use Carbon\Carbon;
use App\Models\EventFighter;

class IndexController extends Controller
{
    public function IndexFuture()
    {
        $today = Carbon::today();
        $events = Event::where('date', '>=', $today)->paginate(10);
        return view('admin.event.index', compact('events'));
    }
    
    public function IndexPast() 
    {
        $today = Carbon::today();
        $events = Event::where('date', '<', $today)->paginate(10);
        return view('admin.event.indexOld', compact('events'));
    }
}