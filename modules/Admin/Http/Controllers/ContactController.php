<?php namespace Modules\Admin\Http\Controllers;

use Illuminate\Support\Facades\Redirect;
use Modules\Admin\Entities\TblContact;
use Pingpong\Modules\Routing\Controller;
use Input;

class ContactController extends Controller {
	
	public function index()
	{
		return view('admin::index');
	}

	public function view() {
		$contact = new TblContact();
		$data = $contact->getContact();
		if ($data) {
			return view('admin::contact.view')->with('contact', $data);
		} else {
			return Redirect::to('/admin');
		}
	}

	public function update() {
		$contact = new TblContact();
		$data = $contact->getContact();
		if ($data) {
			if (Input::get()) {
				$values = Input::all();
				unset($values['_token']);
				if ($contact->updateContact($values)) {
					return Redirect::to('/admin/contact/view');
				} else {
					return Redirect::to('/admin');
				}
			}
			return view('admin::contact.update')->with('contact', $data);
		} else {
			return Redirect::to('/admin');
		}
	}
	
}