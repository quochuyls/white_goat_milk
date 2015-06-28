<?php namespace Modules\Admin\Http\Controllers;

use Modules\Admin\Entities\TblCustomer;
use Pingpong\Modules\Routing\Controller;
use Input;
use Illuminate\Support\Facades\Redirect;

class CustomerController extends Controller {
	
	public function index()
	{
		$customer = new TblCustomer();
		$customers = $customer->getList();
		return view('admin::customer.index')->with('customers', $customers);
	}

	public function createCustomer() {
		$customer = new TblCustomer();
		if (Input::get()) {
			$values = Input::all();
			unset($values['_token']);
			if (Input::file('thumbnail')) {
				$pathUpload = base_path() . '/public/images/customer/';

				$extension = Input::file('thumbnail')->getClientOriginalExtension();

				$fileName = "customer_" . time() . "." . $extension;

				if (Input::file('thumbnail')->move($pathUpload, $fileName)) {
					$values['thumbnail'] = $fileName;
				}
			}

			if ($id = $customer->addCustomer($values)) {
				return Redirect::to('/admin/customer/view/' . $id);
			} else {
				return Redirect::to('/admin');
			}
		}
		return view('admin::customer.create')->with('customer', $customer);
	}

	public function updateCustomer($id) {
		$customer = new TblCustomer();
		$data = $customer->getCustomer($id);
		if ($data) {
			if (Input::get()){
				$values = Input::all();
				unset($values['_token']);
				if (Input::file('thumbnail')) {
					$pathUpload = base_path() . '/public/images/customer/';

					$extension = Input::file('thumbnail')->getClientOriginalExtension();

					$fileName = "customer_" . time() . "." . $extension;

					if (Input::file('thumbnail')->move($pathUpload, $fileName)) {
						$values['thumbnail'] = $fileName;
					}
				}
				if ($customer->updateCustomer($id, $values)) {
					return Redirect::to('/admin/customer/view/' . $id);
				} else {
					return Redirect::to('/admin');
				}
			}
			return view('admin::customer.update')->with('customer', $data);
		} else {
			return Redirect::to('/admin');
		}
	}

	public function deleteCustomer($id) {
		$customer = new TblCustomer();
		if ($customer->deleteCustomer($id)) {
			return Redirect::to('/admin/customer/list');
		} else {
			return Redirect::to('/admin');
		}
	}

	public function viewCustomer($id) {
		$customer = new TblCustomer();
		$data = $customer->getCustomer($id);
		if ($data) {
			return view('admin::customer.view')->with('customer', $data);
		} else {
			return Redirect::to('/admin');
		}
	}
	
}