<?php namespace Modules\Admin\Http\Controllers;

use Pingpong\Modules\Routing\Controller;
use Modules\Admin\Entities\TblFooterInfo;
use DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

class FooterInfoController extends Controller {
	
	public function viewInfo() {
		$info = DB::table('tbl_footer_info')->where('id', 1)->first();
		$headerInfo = new TblFooterInfo();
		if($info == null && $headerInfo->insertInfoDefault()) {
			$info = DB::table('tbl_footer_info')->where('id', 1)->first();
		}

		return view('admin::footer-info.view-info')->with(array('info' => (array)$info));
	}

	public function updateInfo() {

		$info = DB::table('tbl_footer_info')->where('id', 1)->first();
		$headerInfo = new TblFooterInfo();
		if($info == null && $headerInfo->insertInfoDefault()) {
			$info = DB::table('tbl_footer_info')->where('id', 1)->first();
		}
		
		if(Input::get()) {
			if($headerInfo->updateInfo(Input::all())) {
				return Redirect::route('admin.footer-info.view');
			}
		}
		
		return view('admin::footer-info.update')->with(array('info' => (array)$info));
	}
	
}