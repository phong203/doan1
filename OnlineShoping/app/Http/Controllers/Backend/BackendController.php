<?php

namespace App\Http\Controllers\Backend;

use App\User;
use App\Utils;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;


class BackendController extends Controller
{
    public function index()
    {
        $userObj = new User;
        $users = $userObj->getUsers();
        return view('backend.admin',['users' => $users]);
    }

    public function loginIndex()
    {
        return view('backend.login');
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
                if ($user->Type == User::TYPE_ADMIN)
                {
                    if (Hash::check($password, $user->Password))
                    {
                        $user->Token = Utils::generateToken();
                        $user->save();

                        Cookie::queue(Cookie::make('adminid', $user->Id, 'minutes'));
                        Cookie::queue(Cookie::make('admintoken', $user->Token, 'minutes'));

                        return redirect('/admin');
                    }
                    else return redirect()->back()->withErrors(['login' => "Username or password doesn't match"])->withInput();
                }
                else return redirect()->back()->withErrors(['login' => "This account is not a admin"])->withInput();
            }
            else return redirect()->back()->withErrors(['login' => "Username or password doesn't match"])->withInput();
        }
    }
    
    public function logout(Request $request)
	{
        Cookie::queue(Cookie::forget('adminid'));
        Cookie::queue(Cookie::forget('admintoken'));

        return redirect('/admin/login');
    }

    


}
