<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <title>kk_app</title>
</head>
<body>
<nav class="navbar navbar-light bg-light">
        <form class="container-fluid justify-content-start">
            <button class="btn btn-outline-success me-2" type="button"><a class="nav-link" href="/">MAIN PAGE</a></button>
            <button class="btn btn-sm btn-outline-secondary me-2" type="button"><a class="nav-link" href="{{ route('admin_event.index') }}">EVENTS PAGE</a></button>
            <button class="btn btn-sm btn-outline-secondary me-2" type="button"><a class="nav-link" href="{{ route('admin_fighter.index') }}">FIGHTERS PAGE</a></button>
            <button class="btn btn-sm btn-outline-secondary me-2" type="button"><a class="nav-link" href="#">CATEGORIES PAGE</a></button>
            <button class="btn btn-sm btn-outline-secondary me-2" type="button"><a class="nav-link" href="#">ABOUT PAGE</a></button>
        </form>
    </nav>


    @yield('content')

</body>
</html>