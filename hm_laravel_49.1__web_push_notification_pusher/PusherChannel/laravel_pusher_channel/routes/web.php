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

Route::get('/', function () {
    return view('welcome');
});
Route::get('test', function () {
    event(new App\Events\StatusLiked('Someone'));
    return "Event has been sent!";
});


//https://pusher.com/tutorials/web-notifications-laravel-pusher-channels/
//https://www.oneclickitsolution.com/blog/how-to-build-a-real-time-web-notification-in-laravel-using-pusher/
//https://www.bacancytechnology.com/blog/laravel-pusher
