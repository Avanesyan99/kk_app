<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/main', [App\Http\Controllers\MainController::class, 'index'])->name('main');