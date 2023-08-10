<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SettingsController;

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




// 1.0. Authen
//https://blog.logrocket.com/laravel-passport-a-tutorial-and-example-build/

//1.1. Authen
//https://www.toptal.com/laravel/passport-tutorial-auth-user-access


// ------------------- composer require laravel/passport -W
// Trong Laravel, tùy chọn -W khi chạy lệnh composer là viết tắt của --update-with-dependencies. Khi bạn thêm tùy chọn này vào lệnh composer require,
// nó sẽ cập nhật tất cả các gói phụ thuộc của gói bạn đang cài đặt lên phiên bản mới nhất, và sau đó cài đặt gói bạn yêu cầu.
