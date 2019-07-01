<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Requests\AccountLogin;

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

    /**
     * Get the login username to be used by the controller.
     *
     * @return string
     */
    public function tax_code()
    {
        return 'tax_code';
    }

    public function getLogin() {
        return view('auth.pages.login');
    }

    public function postLogin(AccountLogin $request) {
        if (Auth::guard('member')->attempt(['tax_code' => $request->taxcode, 'password' => $request->password])) {
            return redirect()->intended('/');
        }
        else if (Auth::guard('guest')->attempt(['acc_mem_tax_code' => $request->taxcode, 'password' => $request->password])) {
            return redirect()->intended('/');
        }
        return redirect()->back()->withErrors(['errorLogin'=>'Mã số thuế hoặc mật khẩu không chính xác.']);
        // return redirect()->back()->withErrors(['password.error', 'Mã số thuế hoặc mật khẩu không chính xác.']);
    }
}
