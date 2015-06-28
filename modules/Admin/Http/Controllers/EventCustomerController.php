<?php namespace Modules\Admin\Http\Controllers;

use Modules\Admin\Entities\TblEventCustomer;
use Pingpong\Modules\Routing\Controller;
use Input;
use Illuminate\Support\Facades\Redirect;

class EventCustomerController extends Controller {

	public function index()
	{
		$event = new TblEventCustomer();
		$events = $event->getList();
		return view('admin::event-customer.index')->with('events', $events);
	}

	public function createEvent() {
		$event = new TblEventCustomer();
		if (Input::get()) {
			$values = Input::all();
			unset($values['_token']);
			if (Input::file('thumbnail')) {
				$pathUpload = base_path() . '/public/images/event-customer/';

				$extension = Input::file('thumbnail')->getClientOriginalExtension();

				$fileName = "event_customer_" . time() . "." . $extension;

				if (Input::file('thumbnail')->move($pathUpload, $fileName)) {
					$values['thumbnail'] = $fileName;
				}
			}

			if ($id = $event->addEvent($values)) {
				return Redirect::to('/admin/event-customer/view/' . $id);
			} else {
				return Redirect::to('/admin');
			}
		}
		return view('admin::event-customer.create')->with('event', $event);
	}

	public function updateEvent($id) {
		$event = new TblEventCustomer();
		$data = $event->getEvent($id);
		if ($data) {
			if (Input::get()){
				$values = Input::all();
				unset($values['_token']);
				if (Input::file('thumbnail')) {
					$pathUpload = base_path() . '/public/images/event-customer/';

					$extension = Input::file('thumbnail')->getClientOriginalExtension();

					$fileName = "event_customer_" . time() . "." . $extension;

					if (Input::file('thumbnail')->move($pathUpload, $fileName)) {
						$values['thumbnail'] = $fileName;
					}
				}
				if ($event->updateEvent($id, $values)) {
					return Redirect::to('/admin/event-customer/view/' . $id);
				} else {
					return Redirect::to('/admin');
				}
			}
			return view('admin::event-customer.update')->with('event', $data);
		} else {
			return Redirect::to('/admin');
		}
	}

	public function deleteEvent($id) {
		$event = new TblEventCustomer();
		if ($event->deleteEvent($id)) {
			return Redirect::to('/admin/event-customer/list');
		} else {
			return Redirect::to('/admin');
		}
	}

	public function viewEvent($id) {
		$event = new TblEventCustomer();
		$data = $event->getEvent($id);
		if ($data) {
			return view('admin::event-customer.view')->with('event', $data);
		} else {
			return Redirect::to('/admin');
		}
	}
}