@extends('layouts.admin')
@section('content')

<div>
<form action="{{ route('admin.event.update', $event->id) }}" method="post" enctype="multipart/form-data">
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
            <label for="type" class="form-label h2">Type</label>
            <select class="form-select" name="type" id="type">
                @foreach($events as $event) :
                    <option
                        {{ old('type') == $event->type ? 'selected' : '' }}
                    value="{{ $event->id }}" >{{ $event->title }}</option>
                @endforeach
            </select>
            @error('type')
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
            <label for="date" class="form-label h2">Date of Event</label>
            <input
                value="{{ $event->date }}"
            type="date" name="date" class="form-control" id="date">

            @error('date')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <div class="mb-3">
            <label for="info" class="form-label h2">Information</label>
            <textarea class="form-control" name="info" id="info">{{ $event->info }}</textarea>
            
            @error('info')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>


        <button type="submit" class="btn btn-primary">Update</button>
    </form>

</div>
@endsection