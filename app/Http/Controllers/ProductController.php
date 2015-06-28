<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Order;
use App\Products;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Session;
use Input;
use Mail;

class ProductController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$products = Products::getProducts();

		return view('product.index', compact(['products']));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id, $slug)
	{
		$product = Products::getProduct($id, $slug);

		return view('product.show', compact(['product']));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

	public function addOrder() {
		if(Input::get()) {
			$id = Input::get('product_id');
			$slug = Input::get('product_slug');

			$product = Products::getProduct($id, $slug);

			$addArray = [
				'product_id' => $product->id,
				'product_slug' => $product->slug,
				'thumbnail' => $product->thumbnail,
				'title_vi'  => $product->title_vi,
				'title_en'  => $product->title_en,
				'product_code_vi' => $product->product_code_vi,
				'product_code_en' => $product->product_code_en,
				'quantity' => Input::get('quantity'),
				'price_vi'  => $product->price_vi,
				'price_en'  => $product->price_en,
			];

			if (Session::has('order')){
				$array = Session::get('order');
				$array[$product->id] = $addArray;
				Session::put("order", $array);
			} else {
				$array[$product->id] = $addArray;
				Session::put("order", $array);
			}
		}

		return view('product.order');
	}

	public function delOrderProduct($id) {
		if (Session::has('order')) {
			$array = Session::get('order');
			unset($array[$id]);
			Session::put('order', $array);
			return Redirect::route('product.addOrder');

		} else {
			return route('home');
		}
	}

	public function orderInfo() {
		if (Session::has('order')) {
			if(Input::get()) {
				$data = Input::all();
				$products = Session::get('order');
				$order = [
					'token' => str_random(45),
					'info' => json_encode($data),
					'products' => json_encode($products),
					'active' => 0,
					'created_at' => Carbon::now(),
				];
				$orderId = Order::addOrder($order);
				if ($orderId) {
					Mail::send('product.email', ['data' => $data, 'products' => $products, 'orderId' => $orderId,'token' => $order['token']],
						function ($message) use ($data) {
						$message->to($data['email'], $data['name'])->subject('Xác nhận thông tin - detrangfarm.vn');
					});
					Session::forget('order');
					return view('product.success')->with([
						'message' => trans('product.order_success')
					]);
				}
			}
			return view('product.order-info');
		} else {
			return Redirect::route('home');
		}
	}

	public function orderConfirm($id, $token){
		$order = Order::getOrder($id, $token);
		if(!$order->count()){
			return Redirect::route('product.complete')->with([
				'message' => trans('product.confirm_error')
			]);
		}
		
		$data = (array)json_decode($order->info);
		$products = (array)json_decode($order->products, true);
		Mail::send('product.confirm', ['data' => $data, 'products' => $products],
			function ($message) use ($data) {
				$message->to(env('MAIL_SALE_EMAIL'), env('MAIL_SALE_NAME'))->subject(env('MAIL_SALE_NAME'));
		});
		if (Order::updateActive($id, $token)) {
			return Redirect::route('product.complete')->with([
				'message' => trans('product.confirm_success')
			]);
		} else {
			return Redirect::route('home');
		}

	}

	public function completeOrder() {
		return view('product.complete')->with([
			'message' => trans('product.confirm_success')
		]);
	}

}
