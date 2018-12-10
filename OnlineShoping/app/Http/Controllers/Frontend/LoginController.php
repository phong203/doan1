<?php

namespace App\Http\Controllers\Frontend;


use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Validator;
use App\User;
use App\Utils;
use App\Http\Controllers\Controller;

class LoginController extends Controller
{
    public function index(Request $request)
	{
		return view("frontend.login");
	}

    public function login(Request $request)
	{
		$validator = Validator::make($request->all(), [
                'username'      => 'required',
                'password'      => 'required|max:30'
            ],
            []);

        if ($validator->fails())
        {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        else
        {
            $username = $request->get('username');
            $password = $request->get('password');

            $user = User::findUser($username);
            if ($user != null)
            {
                if ($user->Type == User::TYPE_USER)
                {
                    if (Hash::check($password, $user->Password))
                    {
                        $user->Token = Utils::generateToken();
                        $user->save();

                        Cookie::queue(Cookie::make('userid', $user->Id, 'minutes'));
                        Cookie::queue(Cookie::make('token', $user->Token, 'minutes'));

                        return redirect('/');
                    }
                    else return redirect()->back()->withErrors(['login' => "Username or password doesn't match"])->withInput();
                }
                else return redirect()->back()->withErrors(['login' => "This account is not a user"])->withInput();
            }
            else return redirect()->back()->withErrors(['login' => "Username or password doesn't match"])->withInput();
        }
    }

    public function logout(Request $request)
	{
        Cookie::queue(Cookie::forget('userid'));
        Cookie::queue(Cookie::forget('token'));

        return redirect('/');
    }
}
