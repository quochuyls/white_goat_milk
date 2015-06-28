<?php namespace Modules\Admin\Http\Controllers;

use Modules\Admin\Entities\TblService;
use Pingpong\Modules\Routing\Controller;
use Illuminate\Support\Facades\Redirect;
use Input;

class ServiceController extends Controller {

	public function __construct() {
		$this->middleware('adminAuth');
	}
	
	public function update($type)
	{
		if (in_array($type, ['edu', 'experiment', 'food'])) {
			$service = new TblService();
			$data = $service->getService($this->getIdType($type));
			if (Input::get()) {
				$values = Input::all();
				unset($values['_token']);
				if ($service->updateService($this->getIdType($type), $values)) {
					return Redirect::to('/admin/service/view/'.$type);
				} else {
					return Redirect::to('/admin');
				}
			}
			$params = [
				'service'   => $data,
				'type'      => $type,
			];
			return view('admin::service.update')->with($params);
		} else {
			return Redirect::to('/admin');
		}

	}


	public function view($type) {
		if (in_array($type, ['edu', 'experiment', 'food'])) {
			$service = new TblService();
			$data = $service->getService($this->getIdType($type));
			$params = [
				'service'   => $data,
				'type'      => $type,
			];
			return view('admin::service.view')->with($params);
		} else {
			return Redirect::to('/admin');
		}
	}

	public function publicService() {

	}

	public function getIdType($type) {
		switch ($type) {
			case "edu":
				return 1;
			case "experiment":
				return 2;
			default:
				return 3;
		}
	}
}