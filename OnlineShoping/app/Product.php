<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Product extends Model {
	protected $table = 'Products';
	protected $primaryKey = 'Id';
	protected $fillable = ['CategoryId', 'Name', 'Description', 'Specification', 'Price', 'KindId', 'Image'];
	public $incrementing = true;
	public $timestamps = false;

	public function category()
	{
		return $this->hasOne('App\Category', 'Id', 'CategoryId');
	}

	public function getProduct($id)
	{
		$categories = Category::where('ParentId', 0)->get();
		$products = Product::where('CategoryId', (int) $id)->get();

		return view('category', ['categories' => $categories, 'products' => $products]);
	}

	public function getProductLapTopForIndex()
	{
		$products = self::where('KindID', 2)->orderBy('Price')->limit(3)->get();
		return $products;
	}

	public function getProductPhoneForIndex()
	{
		$products = self::where('KindID', 1)->orderBy('Price')->limit(3)->get();
		return $products;
	}

	public function getProductByID($id)
	{
		$product = Product::find($id);
		return $product;
	}

	public function getProducts()
	{
		$products = self::all();
		return $products;
	}

	public function PriceVN()
	{
		return $this->product_price($this->Price);
	}

	private function product_price($priceFloat) {
		$symbol = ' VND';
		$symbol_thousand = '.';
		$decimal_place = 0;
		$price = number_format($priceFloat, $decimal_place, '', $symbol_thousand);
		return $price.$symbol;
	}

	public function destroyProduct($id)
	{
		$product = Product::find((int) $id);
        $product->delete();
	}
	
	
	public function addNewProduct($name, $category, $price, $kind, $description, $specification, $image)
	{
		self::create(["CategoryId" => $category, 'Name' => $name , 
				"Description" => $description, "Specification" => $specification, 
				"Price" => $price, "KindId" => $kind, 'Image' => $image]);
	}
}
