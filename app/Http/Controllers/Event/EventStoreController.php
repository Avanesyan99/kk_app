<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Event\BaseController;
use App\Http\Requests\Event\EventStoreRequest;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;
use App\Models\Event;



class EventStoreController extends BaseController
{
    public function __invoke(EventStoreRequest $request)
    {
        $data = $request->validated();
        $this->service->store($data, $request);
        return redirect()->route('admin_event.index');
    }
}