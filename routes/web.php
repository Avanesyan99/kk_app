<?php

use App\Http\Controllers\Fighter\FighterIndexController;
use App\Http\Controllers\Fighter\FighterStoreController;
use App\Http\Controllers\Fighter\FighterAddController;
use App\Http\Controllers\Fighter\FighterShowController;
use App\Http\Controllers\Fighter\FighterEditController;
use App\Http\Controllers\Fighter\FighterUpdateController;
use App\Http\Controllers\Fighter\FighterDestroyController;

use App\Http\Controllers\Event\EventIndexController;
use App\Http\Controllers\Event\EventAddController;
use App\Http\Controllers\Event\EventStoreController;
use App\Http\Controllers\Event\EventShowController;
use App\Http\Controllers\Event\EventEditController;
use App\Http\Controllers\Event\EventUpdateController;
use App\Http\Controllers\Event\EventDestroyController;

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('layouts.main');
});

Route::get('/main', [App\Http\Controllers\MainController::class, 'index'])->name('main.index');

// Fighters Routing

Route::group(['namespace' => 'App\Http\Controllers\Fighter'], function() {
    Route::get('/fighters', FighterIndexController::class)->name('admin_fighter.index');
    Route::get('/fighters/create', FighterAddController::class)->name('admin_fighter.create');
    Route::post('/fighters', FighterStoreController::class)->name('admin_fighter.store');
    Route::get('/fighters/{fighter}', FighterShowController::class)->name('admin_fighter.show');
    Route::get('/fighters/{fighter}/edit', FighterEditController::class)->name('admin_fighter.edit');
    Route::patch('/fighters/{fighter}', FighterUpdateController::class)->name('admin_fighter.update');
    Route::delete('/fighters/{fighter}', FighterDestroyController::class)->name('admin_fighter.delete');
});

Route::group(['namespace' => 'App\Http\Controllers\Event'], function() {
    Route::get('/events', EventIndexController::class)->name('admin_event.index');
    Route::get('/events/create', EventAddController::class)->name('admin_event.create');
    Route::post('/events/', EventStoreController::class)->name('admin_event.store');
    Route::get('/events/{event}', EventShowController::class)->name('admin_event.show');
    Route::get('/events/{event}/edit', EventEditController::class)->name('admin_event.edit');
    Route::patch('/events/{event}', EventUpdateController::class)->name('admin_event.update');
    Route::delete('/events/{event}', EventDestroyController::class)->name('admin_event.delete');
});