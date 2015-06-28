<?php namespace Modules\Admin\Http\Controllers;

use Pingpong\Modules\Routing\Controller;
use Modules\Admin\Entities\TblHeaderInfo;
use DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

class HeaderInfoController extends Controller {

	public function viewInfo() {
		$info = DB::table('tbl_header_info')->where('id', 1)->first();
		$headerInfo = new TblHeaderInfo();
		if($info == null && $headerInfo->insertInfoDefault()) {
			$info = DB::table('tbl_header_info')->where('id', 1)->first();
		}

		return view('admin::header-info.view-info')->with(array('info' => (array)$info));
	}

	public function updateInfo() {

		$info = DB::table('tbl_header_info')->where('id', 1)->first();
		$headerInfo = new TblHeaderInfo();
		if($info == null && $headerInfo->insertInfoDefault()) {
			$info = DB::table('tbl_header_info')->where('id', 1)->first();
		}
		
		if(Input::get()) {
			if($headerInfo->updateInfo(Input::all())) {
				return Redirect::route('admin.header-info.view');
			}
		}
		
		return view('admin::header-info.update')->with(array('info' => (array)$info));
	}
	
}