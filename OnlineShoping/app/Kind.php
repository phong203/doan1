<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Kind extends Model {
	protected $table = 'Kinds';
	protected $primaryKey = 'Id';
	protected $fillable = ['Name'];
	public $incrementing = true;
	public $timestamps = false;

	public function products()
	{
		return $this->hasMany('App\Product', 'KindId', 'Id');
	}

	public function addNewKind($name)
	{
		self::create(['Name' => $name]);
	}


	public function destroyKind($id)
	{
		$kind = Kind::find((int) $id);
        $kind->delete();
	}

	
}
