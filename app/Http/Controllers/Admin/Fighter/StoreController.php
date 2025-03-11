<?php

namespace App\Http\Controllers\Admin\Event;

use App\Http\Controllers\Admin\Event\BaseController;
use App\Http\Requests\Event\EventStoreRequest;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;
use App\Models\Event;



class StoreController extends BaseController
{
    public function __invoke(EventStoreRequest $request)
    {
        $data = $request->validated();
        $this->service->store($data, $request);
        return redirect()->route('admin.event.index');
    }
}