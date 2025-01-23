@extends('layouts.main')
@section('content')

    <div>

        <ul class="list-group">
            @foreach($fighters as $fighter)
                <li class="list-group-item"><a class="nav-link" href="{{ route('admin_fighter.show', $fighter->id) }}">{{ $fighter->id }}. {{ $fighter->f_name}} {{ $fighter->s_name}}</a></li> 
            @endforeach
        </ul>

        <button type="button" class="mt-3 btn btn-success"><a href="{{ route('admin_fighter.create') }}" class="nav-link">Add Fighters Now!</a></button>

        
    </div>

@endsection