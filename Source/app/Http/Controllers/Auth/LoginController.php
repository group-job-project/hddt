<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function getLogin() {
        return view('auth.pages.login');
    }

    public function postLogin(Request $request) {
        if (Auth::guard('web')->attempt(['tax_code' => $request->taxcode, 'pass_word' => $request->password])) {
            echo "success";
            return;
            $details = Auth::guard('web')->user();
            $user = $details['original'];
            // return $user;
            return redirect()->intended('/');
        }
        echo "ERROR";
        return;
        return redirect()->back()->WithErrors('ERROR');
    }
}
