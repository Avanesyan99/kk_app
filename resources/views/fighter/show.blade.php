@extends('layouts.main')
@section('content')

<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Fighter Inforamtion</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Name</th>
      <td>{{ $fighter->f_name }}</td>
    </tr>
    <tr>
      <th scope="row">Surname</th>
      <td>{{ $fighter->s_name }}</td>
    </tr>
    <tr>
      <th scope="row">Country</th>
      <td>{{ 
            $fighter->country->title
        }}</td>
    </tr>
    <tr>
      <th scope="row">Category</th>
      <td>{{ $fighter->category->title }}</td>
    </tr>
    <tr>
      <th scope="row">Age</th>
      <td>{{ $fighter->age }} y</td>
    </tr>
    <tr>
      <th scope="row">Weight</th>
      <td>{{ $fighter->weight }} KG</td>
    </tr>
    <tr>
      <th scope="row">Titles</th>
      <td>{{ $fighter->titles }}</td>
    </tr>
  </tbody>
</table>

<nav aria-label="...">
  <ul class="pagination pagination-sm">
    <li class="page-item active" aria-current="page">
      <a class="page-link" href="{{ route('fighter.index') }}">Back</a>
    </li>
    <li class="page-item"><a class="page-link" href="{{ route('fighter.edit', $fighter->id) }}">Edit</a></li>
    <form action="{{ route('fighter.delete', $fighter->id) }}" method="post">
        @csrf
        @method('delete')
        <input type="submit" class="page-link" value="Delete" name="delete_btn"/>
    </form>
  </ul>
</nav>

@endsection