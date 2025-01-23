@extends('layouts.main')
@section('content')


@foreach($events as $event) 
<div class="card mb-3">
    <img src="{{ asset('storage/' . $event->image) }}" class="card-img-top event_img" alt="Event Image">
    <div class="card-body">
        <h5 class="card-title">{{ $event->title }}</h5>
        <h6 class="card-title">{{ $event->place }}</h6>
        <p class="card-text"><small>{{ $event->is_active == true ? "Active" : "No Active" }}</small></p>
        <p class="card-text"><small class="text-muted">Starts {{ $event->start_at }}</small></p>
        <p class="card-text"><a class="nav-link" href="{{ route('admin_event.show', $event->id) }}">View more -></a></p>
    </div>
    </div>
@endforeach


    <button type="button" class="mt-3 btn btn-success"><a href="{{ route('admin_event.create') }}" class="nav-link">Add Events Now!</a></button>
    

@endsection