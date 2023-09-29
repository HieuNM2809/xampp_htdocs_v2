<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Exception;
use Laravel\Socialite\Facades\Socialite;
use App\Models\User;

class GitHubController extends Controller
{
    public function gitRedirect()
    {
        return Socialite::driver('github')->redirect();
    }

    public function gitCallback()
    {
        try {

            $user = Socialite::driver('github')->user();

            if(!isset($user->id) && empty(isset($user->id))) {
                return redirect('/login');
            }

            $searchUser = User::where('github_id', $user->id)->first();

            if ($searchUser) {

                Auth::login($searchUser);

                return redirect('/dashboard');

            } else {
                $gitUser = User::create([
                    'name' => $user->name,
                    'email' => $user->email,
                    'github_id' => $user->id,
                    'auth_type' => 'github',
                    'password' => encrypt('password')
                ]);

                Auth::login($gitUser);

                return redirect('/dashboard');
            }

        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }
}
