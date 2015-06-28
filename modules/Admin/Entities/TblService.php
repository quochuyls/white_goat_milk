<?php namespace Modules\Admin\Entities;
   
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use DB;

class TblService extends Model {

	protected  $table = "tbl_service";

    protected $fillable = [
	    'id',
	    'title_vi',
	    'title_en',
	    'description_vi',
	    'description_en',
	    'content_vi',
	    'content_en',
	    'type',
	    'created_at',
	    'updated_at',
	    'publish_at',
    ];

	public function getService($type) {
		$data = DB::table('tbl_service')->where('type', $type)->first();
		if(isset($data) && count($data) > 0) {
			return (array)$data;
		} else {
			return array();
		}
	}

	public function updateService($type, $params) {
		$now = Carbon::now();
		$params['updated_at'] = $now;
		$result = DB::table('tbl_service')->where('type', $type)->update($params);
		if ($result)
			return true;
		else
			return false;
	}

}