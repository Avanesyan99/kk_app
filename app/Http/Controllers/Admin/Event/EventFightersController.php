<?php

namespace App\Http\Controllers\Admin\Event; 

use App\Http\Controllers\Admin\Event\BaseController;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;
use App\Models\Event;
use App\Models\EventFighter;

class EventFightersController extends BaseController
{
    public function addFighters($eventId, Request $request)
    {
        $this->service->addFighters($eventId, $request);

        return view('admin.event.addFighters', compact('event', 'fighters', 'countries'));
    }

    public function storeFighters($eventId)
    {
        $event = Event::findOrFail($eventId);

        // Получаем массив бойцов, которые были выбраны в чекбоксах
        $selectedFighters = request()->input('fighters', []);

        // Синхронизируем бойцов с событием (удаляет отсутствующих, добавляет новых)
        $event->fighters()->sync($selectedFighters);

        return redirect()->route('admin.event.show', $event->id);
    }

}