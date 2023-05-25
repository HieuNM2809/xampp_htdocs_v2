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

use App\Http\Controllers\HomeController;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::patch('/fcm-token', [HomeController::class, 'updateToken'])->name('fcmToken');
Route::get('/send-notification',[HomeController::class,'notification'])->name('notification');




//Auth::routes();
//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//https://techvblogs.com/blog/firebase-push-notification-laravel
//https://console.firebase.google.com/u/0/project/test2405-a17a8/overview

//http://localhost:8000/send-notification?title=change-color&message=red

// LƯU Ý: firebase không chạy được trên trình duyệt ẩn danh

