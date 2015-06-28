<?php namespace Modules\Admin\Entities;
   
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use League\Flysystem\Exception;
use Illuminate\Support\Facades\DB;

class TblContact extends Model {

	public $table = 'tbl_contact';

    protected $fillable = [
	    'id',
	    'address_vi',
	    'address_en',
	    'email',
	    'phone',
	    'created_at',
	    'updated_at',
	    'publish_at',
    ];

	public function getContact() {
		$data = DB::table('tbl_contact')->where('id', 1)->first();
		if ($data) {
			return (array)$data;
		} else {
			return false;
		}
	}

	public function updateContact($values) {
		$now = Carbon::now();
		$values['created_at'] = $values['publish_at'] = $values['updated_at'] = $now;
		try {
			DB::table('tbl_contact')->where('id', 1)->update($values);
			return true;
		}

		catch( Exception $e) {
			return false;
		}
	}

}