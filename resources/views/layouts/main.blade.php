<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <title>Kyokushin Karate</title>
    <style>
        body {
            background-color: #ffffff;
            color: #000000;
            font-family: Arial, sans-serif;
        }
        .navbar {
            background-color: #000000;
        }
        .navbar .btn {
            color: #ffffff;
            border-color: #d7261e;
        }
        .navbar .btn:hover {
            background-color: #d7261e;
            color: #ffffff;
        }
        .nav-link {
            color: #ffffff !important;
            font-weight: bold;
        }
        .header-text {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: #d7261e;
            margin: 20px 0;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-dark">
    <form class="container-fluid justify-content-start">
        <button class="btn btn-outline-danger me-2" type="button"><a class="nav-link" href="{{ route('main.index') }}">MAIN PAGE</a></button>
        <button class="btn btn-sm btn-outline-light me-2" type="button"><a class="nav-link" href="">EVENTS PAGE</a></button>
        <button class="btn btn-sm btn-outline-light me-2" type="button"><a class="nav-link" href="#">FIGHTERS PAGE</a></button>
        <button class="btn btn-sm btn-outline-light me-2" type="button"><a class="nav-link" href="#">CATEGORIES PAGE</a></button>
        <button class="btn btn-sm btn-outline-light me-2" type="button"><a class="nav-link" href="#">ABOUT PAGE</a></button>

        @can('view', auth()->user())
        <button class="btn btn-sm btn-outline-danger me-2" type="button"><a class="nav-link" href="{{ route('admin.index') }}">ADMIN PANEL</a></button>
        @endcan
    </form>
</nav>

<div class="header-text">"Osu! Spirit, Strength, and Discipline"</div>

@yield('content')

</body>
</html>
