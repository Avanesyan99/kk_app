@extends('layouts.main')
@section('content')

<form action="{{ route('event.update', $event->id) }}" method="post" enctype="multipart/form-data">
        @csrf
        @method('patch')
        <div class="mb-3">
            <label for="title" class="form-label h2">Title</label>
            <input
                value="{{ $event->title }}"
            type="text" name="title" class="form-control" id="title">

            @error('title')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <div class="mb-3">
            <label for="formFile" class="form-label h2">Image</label>
            <input value="{{ $event->image }}" class="form-control" type="file" id="formFile" name="image">

            @error('image')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>

        <div class="mb-3">
            <label for="event_type" class="form-label h2">Type</label>
            <input
                value="{{ $event->type }}"
            type="text" name="type" class="form-control" id="event_type">

            @error('type')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <div class="mb-3">
            <label for="event_place" class="form-label h2">Place</label>
            <input
                value="{{ $event->place }}"
            type="text" name="place" class="form-control" id="event_place">

            @error('place')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <div class="mb-3">
            <label for="start_at" class="form-label h2">Date of Event</label>
            <input
                value="{{ $event->start_at }}"
            type="date" name="start_at" class="form-control" id="start_at">

            @error('start_at')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 


        <button type="submit" class="btn btn-primary">Update</button>
    </form>

@endsection