@extends('layouts.admin')
@section('content')

<div>
    
<ul class="nav justify-content-center">
        <li class="nav-item">
            <a class="nav-link" href="{{ route('admin.event.index') }}">UPCOMING TOURNAMENTS</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="{{ route('admin.event.indexPast') }}">PAST TOURNAMENTS</a>
        </li>
    </ul>

    <div class="container" style="--bs-columns: 3; row-gap: 10px; column-gap: 30px;">
        <div class="row row-cols-auto">
            @foreach($events as $event)
                    <div class="card mb-3">
                        <img src="{{ asset('storage/' . $event->image) }}" class="card-img-top event_img" alt="Event Image">
                        <div class="card-body">
                            <div class="flex">
                                <h5 class="card-title">{{ $event->title }}</h5>
                                <p class="card-text"><small>{{ $event->is_active == true ? "Active" : "No Active" }}</small></p>
                            </div>
                            <div class="flex">
                                <h6 class="card-title">{{ $event->Country->title }}</h6>
                                <p class="card-text"><small class="text-muted"><i class="nav-icon fas fa-calendar-alt"></i> {{ $event->date }}</small></p>
                            </div>
                            <p class="card-text"><a class="nav-link" href="{{ route('admin.event.show', $event->id) }}">View more -></a></p>
                        </div>
                    </div>
            @endforeach
        </div>
    </div>
    
    <div class="mt-3">
        {{ $events->links() }}
    </div>
    
    <button type="button" class="mt-3 btn btn-success"><a href="{{ route('admin.event.create') }}" class="nav-link">Add Events Now!</a></button>
    
</div>

@endsection