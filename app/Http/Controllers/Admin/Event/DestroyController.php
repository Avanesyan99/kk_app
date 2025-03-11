<?php

namespace App\Http\Controllers\Admin\Event;

use App\Http\Controllers\Admin\Event\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;
use App\Models\Event;


class DestroyController extends BaseController
{
    public function __invoke(Event $event)
    {
        $event->delete();
        return redirect()->route('admin.event.index');
    }
}