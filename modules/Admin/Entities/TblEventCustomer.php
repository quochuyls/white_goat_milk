<?php namespace Modules\Admin\Entities;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use League\Flysystem\Exception;

class TblEventCustomer extends Model {

	public $table = 'tbl_event_customer';

    protected $fillable = [
	    'id',
	    'thumbnail',
	    'title_vi',
	    'title_en',
	    'description_vi',
	    'description_en',
	    'link_face',
	    'created_at',
	    'updated_at',
	    'publish_at',
    ];

	public function getList() {
		$datas = DB::table('tbl_event_customer')->get();
		if (isset($datas)) {
			return (array) $datas;
		} else {
			return false;
		}
	}

	public function getEvent($id) {
		$data = DB::table('tbl_event_customer')->where('id', $id)->first();
		if ($data) {
			return (array)$data;
		} else {
			return false;
		}
	}

	public function addEvent($values) {
		$now = Carbon::now();
		$values['created_at'] = $values['updated_at'] = $values['publish_at'] = $now;
		$id  = DB::table('tbl_event_customer')->insertGetId($values);
		if ($id) {
			return $id;
		} else {
			return false;
		}
	}

	public function updateEvent($id, $values) {
		$now = Carbon::now();
		$values['updated_at'] = $now;
		$result = false;
		try {
			DB::table('tbl_event_customer')->where('id', $id)->update($values);
			$result = true;
		}
		catch(Exception $e) {
			$result = false;
		}
		return $result;
	}

	public function deleteEvent($id) {
		$data = $this->getEvent($id);
		if (DB::table('tbl_event_customer')->where('id', $id)->delete()) {
			$pathUpload = base_path() . '/public/images/event-customer/';
			if ($data['thumbnail'] != '')
				unlink($pathUpload . $data['thumbnail']);
			return true;
		} else {
			return false;
		}
	}

	public function scopeGetTotal($query) {
		return $query->count();
	}
}