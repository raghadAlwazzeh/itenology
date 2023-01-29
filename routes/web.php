<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [App\Http\Controllers\PageController::class, 'index']);
Route::get('/aboutus', [App\Http\Controllers\PageController::class, 'aboutUs']);
Route::get('/career', [App\Http\Controllers\PageController::class, 'career']);
Route::get('/member/{id}', [App\Http\Controllers\PageController::class, 'teamMember']);
Route::get('/services', [App\Http\Controllers\PageController::class, 'services']);
Route::get('/service/{id}', [App\Http\Controllers\PageController::class, 'service']);
Route::get('/project/{id}', [App\Http\Controllers\PageController::class, 'project']);
Route::post('/contact', [App\Http\Controllers\PageController::class, 'contact']);


Route::get('/contactus', function () {
    return view('contact');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
