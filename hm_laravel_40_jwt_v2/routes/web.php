<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthWebController;

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

Route::get('/login', [AuthWebController::class , 'login']);




// Document : https://jwt-auth.readthedocs.io/en/develop/laravel-installation/#install-via-composer
