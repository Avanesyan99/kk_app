@extends('layouts.main')
@section('content')

<form action="{{ route('category.store') }}" method="post">
        @csrf
        @method('post')
        <div class="mb-3">
            <label for="category" class="form-label h2">Category</label>
            <input
                value="{{ old('title') }}"
            type="text" name="title" class="form-control" id="category">

            @error('title')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>
        <div class="mb-3">
            <label for="weight" class="form-label h2">Weight</label>
            <input
                value="{{ old('weight') }}"
            type="text" name="weight" class="form-control" id="weight">

            @error('weight')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>

        

        <button type="submit" class="btn btn-primary">Create</button>
    </form>

@endsection