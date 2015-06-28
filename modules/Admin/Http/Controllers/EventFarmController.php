<?php namespace Modules\Admin\Http\Controllers;

use Modules\Admin\Entities\TblEventFarm;
use Pingpong\Modules\Routing\Controller;
use Input;
use Illuminate\Support\Facades\Redirect;

class EventFarmController extends Controller {

	public function index()
	{
		$event = new TblEventFarm();
		$events = $event->getList();
		return view('admin::event-farm.index')->with('events', $events);
	}

	public function createEvent() {
		$event = new TblEventFarm();
		if (Input::get()) {
			$values = Input::all();
			unset($values['_token']);
			if (Input::file('thumbnail')) {
				$pathUpload = base_path() . '/public/images/event-farm/';

                    $extension = Input::file('thumbnail')->getClientOriginalExtension();

				$fileName = "event_farm_" . time() . "." . $extension;

				if (Input::file('thumbnail')->move($pathUpload, $fileName)) {
					$values['thumbnail'] = $fileName;
				}
			}

			if ($id = $event->addEvent($values)) {
				return Redirect::to('/admin/event-farm/view/' . $id);
			} else {
				return Redirect::to('/admin');
			}
		}
		return view('admin::event-farm.create')->with('event', $event);
	}

	public function updateEvent($id) {
		$event = new TblEventFarm();
		$data = $event->getEvent($id);
		if ($data) {
			if (Input::get()){
				$values = Input::all();
				unset($values['_token']);
				if (Input::file('thumbnail')) {
					$pathUpload = base_path() . '/public/images/event-farm/';

					$extension = Input::file('thumbnail')->getClientOriginalExtension();

					$fileName = "event_farm_" . time() . "." . $extension;

					if (Input::file('thumbnail')->move($pathUpload, $fileName)) {
						$values['thumbnail'] = $fileName;
					}
				}
				if ($event->updateEvent($id, $values)) {
					return Redirect::to('/admin/event-farm/view/' . $id);
				} else {
					return Redirect::to('/admin');
				}
			}
			return view('admin::event-farm.update')->with('event', $data);
		} else {
			return Redirect::to('/admin');
		}
	}

	public function deleteEvent($id) {
		$event = new TblEventFarm();
		if ($event->deleteEvent($id)) {
			return Redirect::to('/admin/event-farm/list');
		} else {
			return Redirect::to('/admin');
		}
	}

	public function viewEvent($id) {
		$event = new TblEventFarm();
		$data = $event->getEvent($id);
		if ($data) {
			return view('admin::event-farm.view')->with('event', $data);
		} else {
			return Redirect::to('/admin');
		}
	}

}