<?php namespace Modules\Admin\Entities;
   
use Illuminate\Database\Eloquent\Model;
use DB;
use Illuminate\Support\Facades\Redirect;
use League\Flysystem\Exception;

class TblIntroduction extends Model {

	public $table = 'tbl_introduction';

    protected $fillable = [
	    'id',
	    'content_vi',
	    'content_en',
	    'manager_vi',
	    'manager_en',
	    'intro_img_top',
	    'intro_img_right',
	    'intro_img_bottom',
	    'intro_img_left',
	    'created_at',
	    'updated_at',
	    'publish_at',
    ];

	public function getDataIntro() {
		$data = DB::table('tbl_introduction')->where('id', 1)->first();
		if ($data != null) {
			return (array)$data;
		} else {
			return false;
		}
	}

	public function updateDataIntro($values) {
		try {
			DB::table('tbl_introduction')->where('id', 1)->update($values);
		}

		catch(Exception $e) {
			return Redirect::to('/admin');
		}


		return true;
	}

}