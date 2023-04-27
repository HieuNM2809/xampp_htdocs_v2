<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;

class GreetingController extends Controller
{
    public function greet()
    {
        // 1. artisan tự tạo
        // Artisan::call('greeting');

        // 2. có sẵn
        Artisan::call('migrate');
        return view('greeting');
    }
}
