<?php


use App\Http\Controllers\MainController as Main;


use App\Http\Controllers\Admin\AdminController as AdminIndex;
use App\Http\Controllers\Admin\AdminNewsController as AdminNews;

use App\Http\Controllers\Admin\Event\IndexController as AdminEventIndex;
use App\Http\Controllers\Admin\Event\AddController as AdminEventAdd;
use App\Http\Controllers\Admin\Event\StoreController as AdminEventStore;
use App\Http\Controllers\Admin\Event\ShowController as AdminEventShow;
use App\Http\Controllers\Admin\Event\EditController as AdminEventEdit;
use App\Http\Controllers\Admin\Event\UpdateController as AdminEventUpdate;
use App\Http\Controllers\Admin\Event\DestroyController as AdminEventDelete;


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


use App\Http\Controllers\ProfileController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

// Route::get('/', function () {
//     return Inertia::render('Welcome', [
//         'canLogin' => Route::has('login'),
//         'canRegister' => Route::has('register'),
//         'laravelVersion' => Application::VERSION,
//         'phpVersion' => PHP_VERSION,
//     ]);
// });

Route::get('/main', [Main::class, 'index'])->name('main.index');


Route::middleware('auth', 'admin')->prefix('admin')->group(function () {
    Route::get('/', AdminIndex::class)->name('admin.index');
    Route::get('/news', AdminNews::class)->name('admin.news');


    Route::get('/events', [AdminEventIndex::class, 'IndexFuture'])->name('admin.event.index');
    Route::get('/past-events', [AdminEventIndex::class, 'IndexPast'])->name('admin.event.indexOld');
    Route::get('/event/create', AdminEventAdd::class)->name('admin.event.create');
    Route::post('/events', AdminEventStore::class)->name('admin.event.store');  
    Route::get('/events/{event}', AdminEventShow::class)->name('admin.event.show');
    Route::get('/events/{event}/update', AdminEventEdit::class)->name('admin.event.edit');
    Route::patch('/events/{event}', AdminEventUpdate::class)->name('admin.event.update');
    Route::delete('/events', AdminEventDelete::class)->name('admin.event.delete');

    Route::get('/events', [AdminEventIndex::class, 'IndexFuture'])->name('admin.event.index');
    Route::get('/events', [AdminEventIndex::class, 'IndexFuture'])->name('admin.event.index');
    Route::get('/events', [AdminEventIndex::class, 'IndexFuture'])->name('admin.event.index');
});

Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
