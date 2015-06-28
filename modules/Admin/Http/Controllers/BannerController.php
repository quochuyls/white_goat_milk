<?php namespace Modules\Admin\Http\Controllers;

use Illuminate\Support\Facades\Redirect;
use Pingpong\Modules\Routing\Controller;
use DB;
use Input;
use Validator;
use Session;
use Carbon\Carbon;

class BannerController extends Controller {

	public function __construct(){
		$this->middleware('adminAuth');
	}


	public function index()
	{
		return view('admin::index');
	}

	public function banner() {
		$banner = DB::table('tbl_banner')->where('id', 1)->pluck('banner');
		return view('admin::banner.banner')->with('banner', $banner);
	}

	public function serviceEdu() {
		$serviceEdu = DB::table('tbl_banner')->where('id', 1)->pluck('service_edu');
		return view('admin::banner.service-edu')->with('serviceEdu', $serviceEdu);
	}

	public function serviceExperiment() {
		$serviceExperiment = DB::table('tbl_banner')->where('id', 1)->pluck('service_experiment');
		return view('admin::banner.service-experiment')->with('serviceExperiment', $serviceExperiment);
	}

	public function serviceFood() {
		$serviceFood = DB::table('tbl_banner')->where('id', 1)->pluck('service_food');
		return view('admin::banner.service-food')->with('serviceFood', $serviceFood);
	}

	public function introduct() {
		$introduct = DB::table('tbl_banner')->where('id', 1)->pluck('introduct');
		return view('admin::banner.introduct')->with('introduct', $introduct);
	}

	public function customer() {
		$customer = DB::table('tbl_banner')->where('id', 1)->pluck('customer');
		return view('admin::banner.customer')->with('customer', $customer);
	}

	public function uploadBanner() {
		// getting all of the post data
		$file = ['banner' => Input::file('banner')];

		// setting a rules
		$rules = ['banner' => 'required'];

		// doing the validation, passing post data, rules and message
		$validator = Validator::make($file, $rules);

		if ($validator->fails()) {
			// send back to the page with the input data and errors
			return Redirect::to('/admin/banner-icon/banner')->withInput()->withErrors($validator);
		} else {
			// checking file is valid
			if (Input::file('banner')->isValid()) {

				// folder upload banner and icon
				$pathUpload = base_path() . '/public/images/banner-icon/';

				// getting image extension
				$extension = Input::file('banner')->getClientOriginalExtension();

				// renaming file name ex: banner-12345678.png
				$fileName = "banner.png";

				// get datetime current
				$now = Carbon::now();

				// move file to folder
				if (Input::file('banner')->move($pathUpload, $fileName)) {
					if (DB::table('tbl_banner')->where('id', 1)->update(['banner' => $fileName, 'banner_date' => $now])) {
						Session::flash('success', 'Bạn đã thay đổi ảnh banner thành công !');
						return Redirect::to('/admin/banner-icon/banner');
					} else {
						Session::flash('error', 'Xin lỗi! Thay đổi banner không thành công.');
						return Redirect::to('/admin/banner-icon/banner');
					}
				}
			} else {
				Session::flash('error', 'Xin lỗi! Thay đổi banner không thành công.');
				return Redirect::to('/admin/banner-icon/banner');
			}
		}
	}

	public function uploadServiceEdu() {
		// getting all of the post data
		$file = ['service_edu' => Input::file('service_edu')];

		// setting a rules
		$rules = ['service_edu' => 'required'];

		// doing the validation, passing post data, rules and message
		$validator = Validator::make($file, $rules);

		if ($validator->fails()) {
			// send back to the page with the input data and errors
			return Redirect::to('/admin/banner-icon/service-edu')->withInput()->withErrors($validator);
		} else {
			// checking file is valid
			if (Input::file('service_edu')->isValid()) {

				// folder upload banner and icon
				$pathUpload = base_path() . '/public/images/banner-icon/';

				// getting image extension
				$extension = Input::file('service_edu')->getClientOriginalExtension();

				// renaming file name ex: banner-12345678.png
				$fileName = "service_edu.png";

				// get datetime current
				$now = Carbon::now();

				// move file to folder
				if (Input::file('service_edu')->move($pathUpload, $fileName)) {
					if (DB::table('tbl_banner')->where('id', 1)->update(['service_edu' => $fileName, 'service_edu_date' => $now])) {
						Session::flash('success', 'Bạn đã thay đổi icon nông trại giáo dục thành công !');
						return Redirect::to('/admin/banner-icon/service-edu');
					} else {
						Session::flash('error', 'Xin lỗi! Thay đổi icon nông trại giáo dục không thành công.');
						return Redirect::to('/admin/banner-icon/service-edu');
					}
				}
			} else {
				Session::flash('error', 'Xin lỗi! Thay đổi icon nông trại giáo dục không thành công.');
				return Redirect::to('/admin/banner-icon/service-edu');
			}
		}
	}

	public function uploadServiceExperiment() {
		// getting all of the post data
		$file = ['service_experiment' => Input::file('service_experiment')];

		// setting a rules
		$rules = ['service_experiment' => 'required'];

		// doing the validation, passing post data, rules and message
		$validator = Validator::make($file, $rules);

		if ($validator->fails()) {
			// send back to the page with the input data and errors
			return Redirect::to('/admin/banner-icon/service-experiment')->withInput()->withErrors($validator);
		} else {
			// checking file is valid
			if (Input::file('service_experiment')->isValid()) {

				// folder upload banner and icon
				$pathUpload = base_path() . '/public/images/banner-icon/';

				// getting image extension
				$extension = Input::file('service_experiment')->getClientOriginalExtension();

				// renaming file name ex: banner-12345678.png
				$fileName = "service_experiment.png";

				// get datetime current
				$now = Carbon::now();

				// move file to folder
				if (Input::file('service_experiment')->move($pathUpload, $fileName)) {
					if (DB::table('tbl_banner')->where('id', 1)->update(['service_experiment' => $fileName, 'service_experiment_date' => $now])) {
						Session::flash('success', 'Bạn đã thay đổi ảnh icon du lịch thực nghiệm thành công !');
						return Redirect::to('/admin/banner-icon/service-experiment');
					} else {
						Session::flash('error', 'Xin lỗi! Thay đổi icon du lịch thực nghiệm không thành công.');
						return Redirect::to('/admin/banner-icon/service-experiment');
					}
				}
			} else {
				Session::flash('error', 'Xin lỗi! Thay đổi icon du lịch thực nghiệm không thành công.');
				return Redirect::to('/admin/banner-icon/service-experiment');
			}
		}
	}

	public function uploadServiceFood() {
		// getting all of the post data
		$file = ['service_food' => Input::file('service_food')];

		// setting a rules
		$rules = ['service_food' => 'required'];

		// doing the validation, passing post data, rules and message
		$validator = Validator::make($file, $rules);

		if ($validator->fails()) {
			// send back to the page with the input data and errors
			return Redirect::to('/admin/banner-icon/service-food')->withInput()->withErrors($validator);
		} else {
			// checking file is valid
			if (Input::file('service_food')->isValid()) {

				// folder upload banner and icon
				$pathUpload = base_path() . '/public/images/banner-icon/';

				// getting image extension
				$extension = Input::file('service_food')->getClientOriginalExtension();

				// renaming file name ex: banner-12345678.png
				$fileName = "service_food.png";

				// get datetime current
				$now = Carbon::now();

				// move file to folder
				if (Input::file('service_food')->move($pathUpload, $fileName)) {
					if (DB::table('tbl_banner')->where('id', 1)->update(['service_food' => $fileName, 'service_food_date' => $now])) {
						Session::flash('success', 'Bạn đã thay đổi ảnh icon thực phẩm nông trại thành công !');
						return Redirect::to('/admin/banner-icon/service-food');
					} else {
						Session::flash('error', 'Xin lỗi! Thay đổi icon thực phẩm nông trại không thành công.');
						return Redirect::to('/admin/banner-icon/service-food');
					}
				}
			} else {
				Session::flash('error', 'Xin lỗi! Thay đổi icon thực phẩm nông trại không thành công.');
				return Redirect::to('/admin/banner-icon/service-food');
			}
		}
	}

	public function uploadIntroduct() {
		// getting all of the post data
		$file = ['introduct' => Input::file('introduct')];

		// setting a rules
		$rules = ['introduct' => 'required'];

		// doing the validation, passing post data, rules and message
		$validator = Validator::make($file, $rules);

		if ($validator->fails()) {
			// send back to the page with the input data and errors
			return Redirect::to('banner-icon/introduct')->withInput()->withErrors($validator);
		} else {
			// checking file is valid
			if (Input::file('introduct')->isValid()) {

				// folder upload banner and icon
				$pathUpload = base_path() . '/public/images/banner-icon/';

				// getting image extension
				$extension = Input::file('introduct')->getClientOriginalExtension();

				// renaming file name ex: banner-12345678.png
				$fileName = "introduct.png";

				// get datetime current
				$now = Carbon::now();

				// move file to folder
				if (Input::file('introduct')->move($pathUpload, $fileName)) {
					if (DB::table('tbl_banner')->where('id', 1)->update(['introduct' => $fileName, 'introduct_date' => $now])) {
						Session::flash('success', 'Bạn đã thay đổi ảnh icon giới thiệu thành công !');
						return Redirect::to('/admin/banner-icon/introduct');
					} else {
						Session::flash('error', 'Xin lỗi! Thay đổi icon giới thiệu không thành công.');
						return Redirect::to('/admin/banner-icon/introduct');
					}
				}
			} else {
				Session::flash('error', 'Xin lỗi! Thay đổi icon giới thiệu không thành công.');
				return Redirect::to('/admin/banner-icon/introduct');
			}
		}
	}

	public function uploadCustomer() {
		// getting all of the post data
		$file = ['customer' => Input::file('customer')];

		// setting a rules
		$rules = ['customer' => 'required'];

		// doing the validation, passing post data, rules and message
		$validator = Validator::make($file, $rules);

		if ($validator->fails()) {
			// send back to the page with the input data and errors
			return Redirect::to('banner-icon/customer')->withInput()->withErrors($validator);
		} else {
			// checking file is valid
			if (Input::file('customer')->isValid()) {

				// folder upload banner and icon
				$pathUpload = base_path() . '/public/images/banner-icon/';

				// getting image extension
				$extension = Input::file('customer')->getClientOriginalExtension();

				// renaming file name ex: banner-12345678.png
				$fileName = "customer.png";

				// get datetime current
				$now = Carbon::now();

				// move file to folder
				if (Input::file('customer')->move($pathUpload, $fileName)) {
					if (DB::table('tbl_banner')->where('id', 1)->update(['customer' => $fileName, 'customer_date' => $now])) {
						Session::flash('success', 'Bạn đã thay đổi ảnh icon khách hàng thành công !');
						return Redirect::to('/admin/banner-icon/customer');
					} else {
						Session::flash('error', 'Xin lỗi! Thay đổi ảnh icon khách hàng không thành công.');
						return Redirect::to('/admin/banner-icon/customer');
					}
				}
			} else {
				Session::flash('error', 'Xin lỗi! Thay đổi ảnh icon khách hàng không thành công.');
				return Redirect::to('/admin/banner-icon/customer');
			}
		}
	}
}
