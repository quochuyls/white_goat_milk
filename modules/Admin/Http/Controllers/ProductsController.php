<?php namespace Modules\Admin\Http\Controllers;

use Modules\Admin\Entities\Products;
use Pingpong\Modules\Routing\Controller;
use Modules\Admin\Http\Requests\ProductRequest;
use Carbon\Carbon;
use Input;
use Session;
use Modules\Admin\Helpers\NiceSlug as NiceSlug;

class ProductsController extends Controller {

	public function __construct(){
		$this->middleware('adminAuth');
	}

	public function index()
	{

		$products = \Modules\Admin\Entities\Products::publish();

		return view('admin::products.index', compact(['products']));
	}

	public function edit($id){
		$product = Products::find($id);
		$categoriesVi = \Modules\Admin\Entities\Categories::categoryListVi();
		$categoriesEn = \Modules\Admin\Entities\Categories::categoryListEn();
		return view('admin::products.edit', compact('product', 'categoriesVi', 'categoriesEn'));
	}

	public function update(ProductRequest $request){
		$data = $request->all();
		$id = Input::get('id');
		//dd($data);
		$data['slug'] = NiceSlug::to_slug($request->get('title_vi'));
		if($request->hasFile('thumbnail')) {
			$imageName = 'product_' . $id. '.' . $request->file('thumbnail')->getClientOriginalExtension();
			$request->file('thumbnail')->move(base_path() . '/public/images/products/', $imageName);
			$data['thumbnail'] = $imageName;
		}
		if($request->hasFile('icon')) {
			$icon = 'product_icon_' .$id . '.' . $request->file('icon')->getClientOriginalExtension();
			$request->file('icon')->move(base_path() . '/public/images/products/', $icon);
			$data['icon'] = $icon;
		}
		if($request->has('') && $request->get('publish_at') != '' ){
			$data['publish_at'] = date('Y-m-d 00:00:00', strtotime($request->get('publish_at')));
		}
		Products::find($id)->update($data);
		return \Redirect::route('admin.product.index', array($id))->with('message', 'Sửa  sản phẩm thành công');

	}

	public function store(ProductRequest $request){
		$product = Products::create($request->all());
		$product->slug  = NiceSlug::to_slug($request->get('title_vi'));

		if($request->hasFile('thumbnail')) {
			$imageName = 'product_' . $product->id . '.' . $request->file('thumbnail')->getClientOriginalExtension();
			$request->file('thumbnail')->move(base_path() . '/public/images/products/', $imageName);
			$product->thumbnail = $imageName;
		}
		if($request->hasFile('icon')) {
			$icon = 'product_icon_' . $product->id . '.' . $request->file('icon')->getClientOriginalExtension();
			$request->file('icon')->move(base_path() . '/public/images/products/', $icon);
			$product->icon = $icon;
		}
		if($request->has('publish_at') && $request->get('publish_at') != '' ){
			$product->publish_at = date('Y-m-d 00:00:00', strtotime($request->get('publish_at')));
		}
		/*
		if(!$request->hasFile('sale_flg')) {
			$product->sale_flg = 0;
		}
		if(!$request->hasFile('new_flg')) {
			$product->new_flg = 0;
		}*/

		$product->save();

		return \Redirect::route('admin.product.index')->with('message', 'Thêm sản phẩm mới thành công');

	}

	public function destroy($id){
		//Products::delete($id);
		Products::find($id)->update(['delete_flag' => 1]);
		return \Redirect::route('admin.product.index')->with('message', 'Xóa sản phẩm thành công');
	}


	public function restore($id){
		Products::find($id)->update(['delete_flag' => 0]);
		return \Redirect::route('admin.product.index')->with('message', 'Khôi phục phẩm thành công!');
	}

	public function show($id){
		$product = Products::find($id);
		return view('admin::products.show', compact('product'));
	}

	public function create(){
		$categoriesVi = \Modules\Admin\Entities\Categories::categoryListVi();
		$categoriesEn = \Modules\Admin\Entities\Categories::categoryListEn();
		return view('admin::products.create', compact('categoriesVi', 'categoriesEn'));

	}
	
}
