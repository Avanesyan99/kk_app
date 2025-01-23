<?php

namespace App\Http\Controllers\Event; 

use App\Http\Controllers\Event\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;
use App\Models\Event;



class EventShowController extends BaseController
{
    public function __invoke(Event $event)
    {
        return view('event.show', compact('event'));
    }
}