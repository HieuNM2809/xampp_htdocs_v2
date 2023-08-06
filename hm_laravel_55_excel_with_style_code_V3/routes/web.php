<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsersController;
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
Route::get('users/export/', [UsersController::class, 'export']);
Route::get('users/export-with-data/', [UsersController::class, 'exportWithData']);



//https://viblo.asia/p/export-file-excel-voi-laravel-excel-31-djeZ1y9JZWz~

// Lỗi version thì dùng lệnh: composer require maatwebsite/excel:*
