<?php

namespace App\Services\Event;

use App\Http\Requests\Event\EventStoreRequest;
use App\Http\Requests\Event\EventUpdateRequest;
use Illuminate\Support\Facades\Storage;
use App\Models\Event;


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
}