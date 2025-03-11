@extends('layouts.main')
@section('content')

<form action="{{ route('fighter.update', $fighter->id) }}" method="post">
        @csrf
        @method('patch')
        <div class="mb-3">
            <label for="first_name" class="form-label h2">First Name</label>
            <input
            type="text" name="f_name" class="form-control" id="first_name" value="{{ $fighter->f_name }}">

            @error('f_name')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <div class="mb-3">
            <label for="second_name" class="form-label h2">Last Name</label>
            <input
            type="text" name="s_name" class="form-control" id="second_name" value="{{ $fighter->s_name }}">

            @error('s_name')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <div class="mb-3">
            <label for="country" class="form-label h2">Country</label>
            <select class="form-select" name="country_id" id="country">
                @foreach($countries as $country) :
                    <option
                        {{ old('country_id') == $country->id ? 'selected' : '' }}
                    value="{{ $country->id }}" >{{ $country->title }}</option>
                @endforeach
            </select>
            @error('country_id')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <div class="mb-3">
            <label for="weight" class="form-label h2">Weight</label>
            <input
            type="nummber" name="weight" class="form-control" id="weight" value="{{ $fighter->weight }}">

            @error('weight')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <div class="mb-3">
            <label for="age" class="form-label h2">Age</label>
            <input
            type="nummber" name="age" class="form-control" id="age" value="{{ $fighter->age }}">

            @error('age')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>

        <div class="mb-3">
            <label for="content" class="form-label h1">Titles</label>
            <textarea type="text" name="titles" class="form-control" id="content">{{ $fighter->titles }}</textarea> 
        
            @error('titles')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <button type="submit" class="btn btn-primary">Edit</button>
    </form>

@endsection