@extends('layouts.admin')
@section('content')

<div>
<form action="{{ route('admin.event.store') }}" method="post" enctype="multipart/form-data">
        @csrf
        @method('post')
        <div class="mb-3">
            <label for="title" class="form-label h2">Title</label>
            <input
                value="{{ old('title') }}"
            type="text" name="title" class="form-control" id="title">

            @error('title')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <div class="mb-3">
            <label for="formFile" class="form-label h2">Image</label>
            <input class="form-control" type="file" id="formFile" name="image">

            @error('image')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>

        <div class="mb-3">
            <label for="type" class="form-label h2">Type</label>
            <select class="form-select" name="type" id="type">
                    <option {{ old('type') === "tournament" ? 'selected' : '' }} value="tournament" >Tournament</option>
                    <option {{ old('type') === "seminar" ? 'selected' : '' }} value="seminar" >Seminar</option>
                    <option {{ old('type') === "camp" ? 'selected' : '' }} value="camp" >Camp</option>
            </select>
            @error('type')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <div class="mb-3">
            <label for="available" class="form-label h2">available</label>
            <select class="form-select" name="available" id="available">
                    <option {{ old('available') === "international" ? 'selected' : '' }} value="international" >International</option>
                    <option {{ old('available') === "teams-only" ? 'selected' : '' }} value="teams-only" >Teams-only</option>
            </select>
            @error('available')
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
                value="{{ old('date') }}"
            type="date" name="date" class="form-control" id="date">

            @error('date')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 


        <!-- Registration Dates Inputs -->
        <div class="mb-3">
            <label for="reg-start" class="form-label h2">Date of Registration Start</label>
            <input
                value="{{ old('registration_start') }}"
            type="datetime-local" name="registration_start" class="form-control" id="reg-start">

            @error('registration_start')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 
        <div class="mb-3">
            <label for="reg-end" class="form-label h2">Date of Registration End</label>
            <input
                value="{{ old('registration_end') }}"
            type="datetime-local" name="registration_end" class="form-control" id="reg-end">

            @error('registration_end')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 

        <!-- Information Inputs -->
        <div class="mb-3">
            <label for="address" class="form-label h2">Address</label>
            <input
                value="{{ old('address') }}"
            type="text" name="address" class="form-control" id="address">

            @error('address')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 
        <div class="mb-3">
            <label for="phone" class="form-label h2">Phone Number</label>
            <input
                value="{{ old('phone') }}"
            type="tel" name="phone" class="form-control" id="phone" pattern="^\+?[0-9]{10,15}$">

            @error('phone')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>
        <div class="mb-3">
            <label for="websiteUrl" class="form-label h2">Web-Page Url</label>
            <input
                value="{{ old('websiteUrl') }}"
            type="text" name="websiteUrl" class="form-control" id="websiteUrl">

            @error('websiteUrl')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 
        <div class="mb-3">
            <label for="email" class="form-label h2">E-mail</label>
            <input
                value="{{ old('email') }}"
            type="email" name="email" class="form-control" id="email">

            @error('email')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div> 
        <div class="mb-3">
            <label for="info" class="form-label h2">Information</label>
            <textarea class="form-control" name="info" id="info">{{ old('info') }}</textarea>
            
            @error('info')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>


        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>

@endsection