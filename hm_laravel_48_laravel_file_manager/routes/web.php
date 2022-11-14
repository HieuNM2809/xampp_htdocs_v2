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


// https://viblo.asia/p/huong-dan-quan-ly-file-tren-laravel-bang-package-unisharplaravel-filemanager-OeVKBDLMlkW
// https://www.itsolutionstuff.com/post/laravel-file-manager-tutorial-step-by-stepexample.html
// Link tutorial
