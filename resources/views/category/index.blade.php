@extends('layouts.main')
@section('content')

    <div>

        <button type="button" class="mt-3 btn btn-success"><a href="{{ route('category.create') }}" class="nav-link">Add Categories Now!</a></button>
        
        <ul class="list-group">
            @foreach($categories as $category)
                <li class="list-group-item"><a class="nav-link" href="{{ route('category.show', $category->id) }}">{{ $category->title}}</a></li> 
            @endforeach
        </ul>

        
    </div>

@endsection