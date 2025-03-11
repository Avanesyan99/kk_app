@extends('layouts.main')
@section('content')

<form action="{{ route('fighter.store') }}" method="post">
        @csrf
        @method('post')
        <div class="mb-3">
            <label for="first_name" class="form-label h2">First Name</label>
            <input
                value="{{ old('f_name') }}"
            type="text" name="f_name" class="form-control" id="first_name">

            @error('f_name')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <div class="mb-3">
            <label for="second_name" class="form-label h2">Last Name</label>
            <input
                value="{{ old('s_name') }}"
            type="text" name="s_name" class="form-control" id="second_name">

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
                value="{{ old('weight') }}"
            type="nummber" name="weight" class="form-control" id="weight">

            @error('weight')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <div class="mb-3">
            <label for="age" class="form-label h2">Age</label>
            <input
                value="{{ old('age') }}"
            type="nummber" name="age" class="form-control" id="age">

            @error('age')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>

        <div class="mb-3">
            <label for="content" class="form-label h1">Titles</label>
            <textarea type="text" name="titles" class="form-control" id="content">{{ old('titles') }}</textarea> 

            @error('title')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <button type="submit" class="btn btn-primary">Create</button>
    </form>

@endsection