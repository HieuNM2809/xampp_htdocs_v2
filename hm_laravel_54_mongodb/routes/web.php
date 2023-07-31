<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use Illuminate\Support\Facades\DB;

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

Route::get('/test-mysql', function () {
    dd(DB::table('users')->get());
});

Route::resource('books',BookController::class);

//https://www.webappfix.com/post/mongodb-database-connection-in-laravel.html
//https://www.itsolutionstuff.com/post/laravel-5-mongodb-crud-tutorialexample.html
//https://github.com/jenssegers/Laravel-MongoDB#inserts-updates-and-deletes

// 1. Thêm thư viên mongodb.all

//2. data mẫu : mongodb_laravel_9_crud.sql

