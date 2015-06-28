<?php namespace Modules\Admin\Http\Controllers;

use Modules\Admin\Entities\TblIntroduction;
use Pingpong\Modules\Routing\Controller;
use Illuminate\Support\Facades\Redirect;
use Input;

class IntroductionController extends Controller {
	
	public function index()
	{
		return view('admin::index');
	}

	public function view() {
		$intro = new TblIntroduction();
		$data = $intro->getDataIntro();
		if ($data) {
			return view('admin::introduction.view')->with('intro', $data);
		} else {
			return Redirect::to('/admin');
		}
	}

	public function update() {
		$intro = new TblIntroduction();
		$data = $intro->getDataIntro();
		if ($data) {
			if (Input::get()) {
				$values = Input::all();
				unset($values['_token']);
				$pathUpload = base_path() . '/public/images/banner-icon/';

				if(Input::file('intro_img_top')) {
					$fileNameTop = 'intro_img_top.png';
					if (Input::file('intro_img_top')->move($pathUpload, $fileNameTop)) {
						$values['intro_img_top'] = $fileNameTop;
					}
				}

				if(Input::file('intro_img_left')) {
					$fileNameLeft = 'intro_img_left.png';
					if (Input::file('intro_img_left')->move($pathUpload, $fileNameLeft)) {
						$values['intro_img_left'] = $fileNameLeft;
					}
				}

				if(Input::file('intro_img_right')) {
					$fileNameRight = 'intro_img_right.png';
					if (Input::file('intro_img_right')->move($pathUpload, $fileNameRight)) {
						$values['intro_img_right'] = $fileNameRight;
					}
				}

				if(Input::file('intro_img_bottom')) {
					$fileNameRight = 'intro_img_bottom.png';
					if (Input::file('intro_img_bottom')->move($pathUpload, $fileNameRight)) {
						$values['intro_img_bottom'] = $fileNameRight;
					}
				}

				if ($intro->updateDataIntro($values)) {
					return Redirect::to('/admin/introduction/view');
				}
			}
			return view('admin::introduction.update')->with('intro', $data);
		} else {
			return Redirect::to('/admin');
		}
	}
	
}