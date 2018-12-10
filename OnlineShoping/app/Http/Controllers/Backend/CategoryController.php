<?php

namespace App\Http\Controllers\Backend;

use App\Category;
use App\Kind;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{
    
    public function index()
    {
        $category = new Category();
		$categories = $category->getCategories();

		return view('backend.category.categories', ['categories' => $categories]);
    }

    public function addIndex()
    {
        return view('backend.category.add');
    }

    public function add(Request $request)
    {
        $validator = Validator::make($request->all(), [
                'name'               => 'required|max:255',
                'category'           => 'required',
            ],
            []);

        if ($validator->fails())
        {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        else
        {
            $name = $request->input('name');
            $parent = $request->input('category');
            $category = new Category();
            $category->Name = $name;
            $category->ParentId = (int) $parent;
            $category->save();
        
            return redirect('/admin/category');
        }
    }

    
    public function edit($id)
    {
       $category = Category::find((int) $id);
        return view('backend.category.edit', ['category' => $category]);
    }

    
    public function update(Request $request, $id)
    {
          $validator = Validator::make($request->all(), [
                'name'               => 'required|max:255',
                'category'           => 'required|exists:Categories,ParentId',
            ],
            []);

        if ($validator->fails())
        {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        else
        {
            $category = Category::find((int) $id);
            $category->Name = $request->get('name');
            $category->ParentId = $request->get('category');

            $category->save();

            return redirect('admin/category');
        }
    }

    
    public function destroy($id)
    {
        
        Category::find((int)$id)->remove();
        return redirect('admin/category');
    }

    public function destroyKind($id)
    {
        $kind = new Kind();
        $kind->destroyKind($id);
        
        return redirect('admin/category');
    }
}
