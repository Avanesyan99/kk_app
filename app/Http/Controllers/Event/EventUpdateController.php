<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Event\BaseController;
use App\Http\Requests\Event\EventUpdateRequest;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;
use App\Models\Event;


class EventUpdateController extends BaseController
{
    public function __invoke(Event $event, EventUpdateRequest $request)
    {
        $data = $request->validated();
        $this->service->update($data, $event, $request);
        return redirect()->route('admin_event.show', $event->id);
    }
}