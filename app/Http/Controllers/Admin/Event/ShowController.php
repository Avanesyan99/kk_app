<?php

namespace App\Http\Controllers\Admin\Event; 

use Carbon\Carbon;
use App\Http\Controllers\Admin\Event\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;
use App\Models\Event;
use App\Models\Team;
use App\Models\EventFighter;

class ShowController extends BaseController
{
    public function __invoke($id)
    {
        $fighters = Fighter::all();
        $teams = Team::withCount('fighters')->findOrFail($id);
        $event = Event::with('teams')->findOrFail($id);
        
        return view('admin.event.show', compact('event', 'teams'));

    }
}