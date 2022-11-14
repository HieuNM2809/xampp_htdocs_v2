<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TestController;

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
Route::get('filemanager', [TestController::class, 'index']);

Route::get('/', function () {
    return view('welcome');
});

// Cách 1: thư viện 1
// https://viblo.asia/p/huong-dan-quan-ly-file-tren-laravel-bang-package-unisharplaravel-filemanager-OeVKBDLMlkW
// https://www.itsolutionstuff.com/post/laravel-file-manager-tutorial-step-by-stepexample.html
// Link tutorial



// Cách 2 : thư viện 2
//https://www.nicesnippets.com/blog/laravel-file-manager-tutorial-example

Route::group(['prefix' => 'laravel-filemanager'], function (){
    \UniSharp\LaravelFilemanager\Lfm::routes();
});
