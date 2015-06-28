<?php namespace Modules\Admin\Http\Controllers;

use Modules\Admin\Entities\Products;
use Modules\Admin\Entities\TblCustomer;
use Modules\Admin\Entities\TblEventCustomer;
use Modules\Admin\Entities\TblEventFarm;
use Modules\Admin\Entities\Videos;
use Pingpong\Modules\Routing\Controller;
use Auth;
class AdminController extends Controller {

	public function __construct(){
		$this->middleware('adminAuth');
	}
	
	public function index()
	{
		$totalCustomer = TblCustomer::getTotal();
		$totalEventFarm = TblEventFarm::getTotal();
		$totalEventCustomer = TblEventCustomer::getTotal();
		$totalVideo = Videos::getTotal();
		$totalProduct = Products::getTotal();
		$params = [
			'customer' => $totalCustomer,
			'eventFarm' => $totalEventFarm,
			'eventCustomer' => $totalEventCustomer,
			'video' => $totalVideo,
			'product' => $totalProduct
		];
		return view('admin::index')->with($params);
	}
	
}
