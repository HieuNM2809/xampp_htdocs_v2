<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;

class AuthWebController extends Controller
{
    /**
     * Create a new AuthWebController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->guard = "web";
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login()
    {
        $credentials = request(['email', 'password']);

        //Auth::guard('admin')
        if (! $token = auth($this->guard)->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }
        return 'login thành công';

        // thêm session rồi viết middleware
    }

}
