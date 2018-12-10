<?php

namespace App\Http\Controllers\Frontend;

use App\Utils;
use App\User;
use App\Activate;
use App\Mail\ActivateMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;
use Carbon\Carbon;
use App\Http\Controllers\Controller;


class RegisterController extends Controller
{
    public function index(Request $request)
	{
		return view("frontend.register");
	}

    public function register(Request $request)
	{
		$validator = Validator::make($request->all(), [
                'firstname'     => 'required|max:30',
                'lastname'      => 'required|max:30',
                'username'      => 'required|min:5|max:30|unique:Users,Username',
                'email'         => 'required|email|unique:Users,Email',
                'password'      => 'required|min:5|max:30|confirmed'
            ],
            []);

        if ($validator->fails())
        {
            $username = $request->get('username');

            return redirect()->back()->withErrors($validator)->withInput();
        }
        else
        {
            $firstname = $request->get('firstname');
            $lastname = $request->get('lastname');
            $username = $request->get('username');
            $email = $request->get('email');
            $password = $request->get('password');

            $user = new User();
            $user->Firstname = $firstname;
            $user->Lastname = $lastname;
            $user->Username = $username;
            $user->Email = $email;
            $user->Type = User::TYPE_USER;
            $user->Password = Hash::make($password);
            $user->Token = Utils::generateToken();
            $user->save();

            $userid = User::where("username", $username)->first()->Id;

            $activate = new Activate();
            $activate->UserId = $userid;
            $activate->Code = rand(100000, 999999);
            $activate->Expried = Carbon::now()->addDays(1);
            $activate->Count = 0;
            $activate->save();

//            Mail::to($user->Email, $user->Firstname)
//                    ->send(new ActivateMail($userid, $user->Token, $user->Firstname, $activate->Code, $activate->Expried));
            
            return view('frontend.notice');
        }
	}

    public function activate($userid, $token, $code)
	{
		$validator = Validator::make(['userid' => $userid, 'token' => $token, 'code' => $code], [
                'userid'     => 'required|exists:users,Id',
                'token'   => 'required',
                'code'       => 'required|integer'
            ],
            []);

        if ($validator->fails())
        {
            return $validator->messages()->first();
        }
        else
        {
            $user = User::find($userid);
            if ($user->Token != $token)
            {
                return view('viewError.error1');
            }
            $activate = $user->activate;
            if ($activate == null)
            {
                return view('viewError.error2');
            }

            if ((int) $activate->Code != (int) $code)
            {
                $activate->Count++;
                $activate->save();
                if ($activate->Count >= 5)
                {
                    $activate->delete();
                }
                return view('viewError.error3');
            }

            $Expried = Carbon::parse($activate->Expried);
            if ($Expried->lt(Carbon::now()))
            {
                return view('viewError.error4');
            }

            $user->Type = User::TYPE_USER;
            $user->save();
            $activate->delete();

            return redirect('/');
        }
    }
}
