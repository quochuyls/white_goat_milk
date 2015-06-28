<?php namespace Modules\Admin\Entities;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use League\Flysystem\Exception;
use Modules\Admin\Helpers\NiceSlug;

class TblEventFarm extends Model {

	public $table = 'tbl_event_farm';
    protected $fillable = [
	    'id',
	    'thumbnail',
	    'title_vi',
	    'title_en',
	    'description_vi',
	    'description_en',
	    'content_vi',
	    'content_en',
	    'link_face',
	    'created_at',
	    'updated_at',
	    'publish_at',
    ];

	public function getList() {
		$datas = DB::table('tbl_event_farm')->get();
		if (isset($datas)) {
			return (array) $datas;
		} else {
			return false;
		}
	}

	public function getEvent($id) {
		$data = DB::table('tbl_event_farm')->where('id', $id)->first();
		if ($data) {
			return (array)$data;
		} else {
			return false;
		}
	}

	public function addEvent($values) {
		$now = Carbon::now();
		$values['created_at'] = $values['updated_at'] = $values['publish_at'] = $now;
		$values['slug'] = NiceSlug::to_slug($values['title_vi']);
		$id  = DB::table('tbl_event_farm')->insertGetId($values);
		if ($id) {
			return $id;
		} else {
			return false;
		}
	}

	public function updateEvent($id, $values) {
		$now = Carbon::now();
		$values['updated_at'] = $now;
		$values['slug'] = NiceSlug::to_slug($values['title_vi']);
		$result = false;
		try {
			DB::table('tbl_event_farm')->where('id', $id)->update($values);
			$result = true;
		}
		catch(Exception $e) {
			$result = false;
		}
		return $result;
	}

	public function deleteEvent($id) {
		$data = $this->getEvent($id);
		if (DB::table('tbl_event_farm')->where('id', $id)->delete()) {
			$pathUpload = base_path() . '/public/images/event-farm/';
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
