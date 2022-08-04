<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function index()
    {
        return view('landingpages.login');
    }

    public function authenticate (Request $request)
    {
        $credentials = $request->validate([
            'email' => ['required','email:dns'],
            'password' => ['required']
        ]);

        
        if (Auth::attempt($credentials, $request->remember)) {
            $request->session()->regenerate();

            $request->session()->put('iduser', Crypt::encryptString(auth()->user()->id)) ;
            
            return redirect()->intended('dashboard');
        }
        
        return back()->with('LoginErr','Login failed!');
        // dd ($credentials);
    }

    public function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
