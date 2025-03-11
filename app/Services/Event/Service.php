<?php

namespace App\Services\Event;

use App\Http\Requests\Event\EventStoreRequest;
use App\Http\Requests\Event\EventUpdateRequest;
use Illuminate\Support\Facades\Storage;
use App\Models\Event;
use App\Models\Country;
use App\Models\Fighter;
use App\Models\Category;


class Service {
    public function store($data, EventStoreRequest $request) {
        $originalName = time() . '_' . $request->file('image')->getClientOriginalName();
        $path = $request->file('image')->storeAs('images', $originalName, 'public');
        $data['image'] = $path;
        $event = Event::create($data);
    }

    public function update($data, Event $event, EventUpdateRequest $request) {
        if ($request->hasFile('image')) {
            if ($event->image_path && Storage::disk('public')->exists($event->image)) {
                Storage::disk('public')->delete($event->image);
            }

            $originalName = time() . '_' . $request->file('image')->getClientOriginalName();
            $path = $request->file('image')->storeAs('images', $originalName, 'public');
        }
        $data['image'] = $path;
        $event->update($data);
    }

    public function addFighters($eventId, $request) {
        $event = Event::find($eventId);
        $countries = Country::all();
        $sortBy = $request->query('sort_by', 'name');
        $order = $request->query('order', 'asc');

        $fighters = Fighter::all()->map(function ($fighter) use ($event) {
            $fighter->checked = $event->fighters->contains($fighter->id) ? 1 : 0;
            return $fighter;
        });

        // Обрабатываем сортировку по чекбоксам
        if ($sortBy === 'checked') {
            $fighters = $fighters->sortBy($sortBy, SORT_REGULAR, $order === 'desc');
        } else {
            $fighters = $fighters->sortBy($sortBy, SORT_REGULAR, $order === 'desc');
        }

        if ($request->ajax()) {
            return response()->json([
                'html' => view('partials.fighters_table', compact('event', 'fighters'))->render()
            ]);
        }

    }
}