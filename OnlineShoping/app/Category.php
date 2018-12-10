<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model {
	protected $table = 'Categories';
	protected $primaryKey = 'Id';
	protected $fillable = ['ParentId', 'Name'];
	public $incrementing = true;
	public $timestamps = false;

	public function remove()
	{
		//Find all child category and delete them
		foreach ($this->childs as $category)
		{
			$category->remove();
		}

		//Find all product in category and delete them
		foreach ($this->products as $product)
        {
            $product->delete();
        }
        $this->delete();
	}

	public function parent()
	{
		return $this->hasOne('App\Category', 'Id', 'ParentId');
	}

	public function products()
	{
		return $this->hasMany('App\Product', 'CategoryId', 'Id');
	}

	public function childs()
	{
		return $this->hasMany('App\Category', 'ParentId', 'Id');
	}

	public function getCategory()
	{
		$categories = Category::where('ParentId', 0)->get();
		return $categories;
	}

	public function getCategories()
	{
		$categories = self::all();
		return $categories;
	}

	public function destroyCategory($id)
	{
		$category = Category::find((int) $id);
        $category->delete();
	}
	
	public function addNewCategory($name, $kind)
	{
		self::create(['Name' => $name,"ParentId" => $kind]);
	}
}
