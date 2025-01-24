<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Event\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;
use App\Models\Event;


class EventIndexController extends BaseController
{
    public function __invoke()
    {
        $events = Event::paginate(5);
        return view('event.index', compact('events'));
    }
}