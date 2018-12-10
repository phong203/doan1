<?php

namespace App\Http\Controllers\Backend;

use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    public function index()
    {
        $productObj = new Product();
		$products = $productObj->getProducts();

		return view('backend.product.product', ['products' => $products]);
    }

    public function addIndex()
    {
        return view('backend.product.form');
    }

    public function add(Request $request)
    {
        $validator = Validator::make($request->all(), [
                'name'               => 'required|max:255',
                'category'           => 'required|exists:Categories,Id',
                'description'        => 'required|max:5000',
                'specification'      => 'required',
                'price'              => 'required|integer',
                'kind'               => 'required|exists:Kinds,Id',
                'product_image'      => 'required|image|max:2048'
            ],
            []);

        if ($validator->fails())
        {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        else
        {
            $nameImg = md5(Input::file('product_image')->getClientOriginalName() . Input::file('product_image')->getSize());
            $nameImg = $nameImg . '.' . Input::file('product_image')->getClientOriginalExtension();
            $imageURL = 'images/products/' . $nameImg;
            Input::file('product_image')->move('images/products', $nameImg);

            $name = $request->input('name');
            $category = $request->input('category');
            $price = $request->input('price');
            $kind = (int) $request->input('kind');
            $description = $request->input('description');
            $specification = $request->input('specification');

            $product = new Product();
            $product->addNewProduct($name, $category, $price, $kind, $description, $specification, $imageURL);

            return redirect('/admin/product');
        }
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $product = Product::find((int) $id);
        return view('backend.product.edit', ['product' => $product]);
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
                'name'               => 'required|max:255',
                'category'           => 'required|exists:Categories,Id',
                'description'        => 'required|max:5000',
                'specification'      => 'required',
                'price'              => 'required|integer',
                'kind'               => 'required|exists:Kinds,Id'
            ],
            []);

        if ($validator->fails())
        {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        else
        {
            $product = Product::find((int) $id);
            $product->Name = $request->get('name');
            $product->CategoryId = $request->get('category');
            $product->Price = $request->get('price');
            $product->KindId = $request->get('kind');
            $product->Description = $request->get('description');
            $product->Specification = $request->get('specification');

            if (Input::hasfile('product_image'))
            {
                $nameImg = md5(Input::file('product_image')->getClientOriginalName() . Input::file('product_image')->getSize());
                $nameImg = $nameImg . '.' . Input::file('product_image')->getClientOriginalExtension();
                $imageURL = 'images/products/' . $nameImg;
                Input::file('product_image')->move('images/products', $nameImg);
                $product->Image = $imageURL;
            }
            $product->save();

            return redirect('admin/product');
        }
    }

    public function destroy($id)
    {
        $product = new Product();
        $product->destroyProduct($id);
        return redirect('admin/product');
    }
}
