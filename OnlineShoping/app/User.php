<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class User extends Model {
	const TYPE_ADMIN = 0;
	const TYPE_USER = 1;
	const TYPE_PENDING = 2;
	const TYPE_SUSPENDED = 3;

	protected $table = 'Users';
	protected $primaryKey = 'Id';
	protected $fillable = ['Firstname', 'Lastname', 'Username', 'Email', 'Password', 'Phone', 'Type' ];
	protected $hidden = ['Password', 'Token'];
	public $incrementing = true;
	public $timestamps = false;

	public static function findUser($Name)
	{
		$userField = 'Username';
        if (filter_var($Name, FILTER_VALIDATE_EMAIL)) $userField = 'Email';
        return User::where($userField, $Name)->first();
	}

	public function activate()
	{
		return $this->hasONe('App\Activate', 'UserId', 'Id');
	}

	public function getAdmins()
	{
		$admin = User::where('Type',0)->get();
		return $admin;
	}

	public function getUsers()
	{
		$user = User::where('Type',1)->get();
		return $user;
	}

	
}
