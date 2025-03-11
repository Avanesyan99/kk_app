<?php

namespace App\Http\Controllers\Admin\Event; 

use App\Http\Controllers\Admin\Event\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;
use App\Models\Event;


class EditController extends BaseController
{
    public function __invoke(Event $event)
    {

        $countries = Country::all();
        $events = Event::all();
        return view('admin.event.edit', compact('event', 'events', 'countries'));
    }
}