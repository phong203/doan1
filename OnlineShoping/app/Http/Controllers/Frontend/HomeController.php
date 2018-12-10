<?php namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Category;
use App\Product;


class HomeController extends Controller {
	public function index()
	{
		$proLap = new Product();
		$dataLap = $proLap->getProductLapTopForIndex();
		$proPhone = new Product();
		$dataPhone = $proPhone->getProductPhoneForIndex();

		return view('frontend.index', ['products' => $dataLap, 'proPhones' => $dataPhone]);
	}

	public function category($id)
	{
		$products = Product::where('CategoryId', (int) $id)->get();

		return view('frontend.category', ['products' => $products]);
	}

	public function product($id)
	{
		$pro = new Product();
		$product = $pro->getProductByID($id);
		if ($product != null)
		{
			return view("frontend.product", ['product' => $product]);
		}
		else return "Page not found";

	}
	public function contact()
	{
		return view('frontend.contact');
	}

	public function checkout()
	{
		return view('frontend.checkout');
	}
}
