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


Route::get('test-convert-token' , function (){
    $token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL2F1dGgvbG9naW4iLCJpYXQiOjE2NjU0NzU1MzcsImV4cCI6MTY2NTQ3OTEzNywibmJmIjoxNjY1NDc1NTM3LCJqdGkiOiJQRU4wNklHcFVqS0s1THNxIiwic3ViIjoiMSIsInBydiI6IjNjODNhNWJlOWE5OTU0ZTZlOTI5YjgxZmNjMWEwYzBlZTcwMTExYTciLCJlbWFpbCI6ImhlaGVAZXhhbXBsZS5vcmcifQ.Ej5pdivqw9NbEDwZbcez6wBao3JhWUcchPEWO6BXo9M';
   return  (json_decode(base64_decode(str_replace('_', '/', str_replace('-','+',explode('.', $token)[1])))));
});




// Document : https://jwt-auth.readthedocs.io/en/develop/laravel-installation/#install-via-composer
