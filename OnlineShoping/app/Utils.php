<?php namespace App;
use Carbon\Carbon;
use Illuminate\Support\Facades\Cookie;

class Utils {
	const TYPE_ADMIN = 0;
	const TYPE_USER = 1;
	const TYPE_PENDING = 2;
	const TYPE_SUSPENDED = 3;

	public static function generateToken()
	{
		return md5(Carbon::now() . rand(100000, 999999));
	}

	public static function getUser()
	{
		$userid = Cookie::get('userid');

		return User::find($userid);
	}

	public static function userLogged()
	{
		$userid = Cookie::get('userid');
        $token = Cookie::get('token');
		if ($userid != null)
		{
			$user = User::find($userid);
			if (($user != null) && ($user->Token == $token)) return true;
		}
		return false;
	}

	public static function adminLogged()
	{
		$userid = Cookie::get('adminid');
        $token = Cookie::get('admintoken');
		if ($userid != null)
		{
			$user = User::find($userid);
			if (($user != null) && ($user->Token == $token) && ($user->Type == 0)) return true;
		}
		return false;
	}
}