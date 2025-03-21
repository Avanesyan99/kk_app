@extends('layouts.main')
@section('content')


<div>
  <table class="table">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Event Information</th>
        <th scope="col">Edit</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">Title</th>
        <td>{{ $event->title }}</td>
        <td><a href=""><i class="bi bi-pencil-square" style="color: #000;"></i></a></td>
      </tr>
      <tr>
        <th scope="row">Type</th>
        <td>{{ $event->type }}</td>
        <td><a href=""><i class="bi bi-pencil-square" style="color: #000;"></i></a></td>

      </tr>
      <tr>
        <th scope="row">Image</th>
        <td>{{ $event->image }}</td>
        <td><a href=""><i class="bi bi-pencil-square" style="color: #000;"></i></a></td>

      </tr>
      <tr>
        <th scope="row">PLace</th>
        <td>{{ $event->place }}</td>
        <td><a href=""><i class="bi bi-pencil-square" style="color: #000;"></i></a></td>

      </tr>
      <tr>
        <th scope="row">Start</th>
        <td>{{ $event->start_at }}</td>
        <td><a href=""><i class="bi bi-pencil-square" style="color: #000;"></i></a></td>

      </tr>
      <tr>
        <th scope="row">Active</th>
        <td>{{ $event->is_active === 1 ? "Yes" : "No" }}</td>
        <td><a href=""><i class="bi bi-pencil-square" style="color: #000;"></i></a></td>

      </tr>
    </tbody>
  </table>


  <nav aria-label="...">
    <ul class="pagination pagination-sm">
      <li class="page-item active" aria-current="page">
        <a class="page-link" href="{{ route('event.index') }}">Back</a>
      </li>
      <li class="page-item"><a class="page-link" href="{{ route('event.edit', $event->id) }}">Edit</a></li>
      <form action="{{ route('event.delete', $event->id) }}" method="post">
          @csrf
          @method('delete')
          <input type="submit" class="page-link" value="Delete" name="delete_btn"/>
      </form>
    </ul>
  </nav>

  <div>
    <h3 style = "text-align: center;"><b>Event Image</b></h3>
    <img src="{{ asset('storage/' . $event->image) }}" class="event_img" alt="Event Image">
  </div>

  <div>

  </div>

</div>

@endsection