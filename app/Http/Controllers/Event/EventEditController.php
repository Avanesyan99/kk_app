<?php

namespace App\Http\Controllers\Event; 

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;
use App\Models\Event;


class EventEditController extends Controller
{
    public function __invoke(Event $event)
    {
        return view('event.edit', compact('event'));
    }
}