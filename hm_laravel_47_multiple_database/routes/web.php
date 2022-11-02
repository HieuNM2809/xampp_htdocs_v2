<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;
use App\Models\TestDatabase;

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

Route::get('/database1', function () {
    return  DB::table("users")->get();

});
Route::get('/database2', function () {

    // thêm prefix connection để connect database mong muốn
    // return  DB::connection('mysql2')->table("user")->get();
    return TestDatabase::all();

});


// $Model = new Article;
// $Model->setConnection('mysql2');
// $find = $Model->find(1);
// return $find;

// Schema::connection('mysql2')->create('articles', function (Blueprint $table) {
//     $table->increments('id');
//     $table->string('title');
//     $table->string('body')->nullable();
//     $table->timestamps();
// });
