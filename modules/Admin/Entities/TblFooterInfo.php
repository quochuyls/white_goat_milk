<?php namespace Modules\Admin\Entities;
   
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class TblFooterInfo extends Model {

	public $table = "tbl_footer_info";

	public $timestamps = true;

	public $primaryKey = "id";

    protected $fillable = [];

    public function insertInfoDefault() {
    	$now = Carbon::now();
    	return DB::table('tbl_footer_info')->insert(array(
			'email' => '',
			'website' => '',
			'address_vi' => '',
			'address_en' => '',
			'created_at' => $now,
			'updated_at' => $now
		));
    }

    public function updateInfo($data) {
    	$now = Carbon::now();
    	try {
    		DB::table('tbl_footer_info')->where('id', 1)->update(array(
    				'website' => $data['website'],
    				'email'	=> $data['email'],
    				'address_vi' => $data['address_vi'],
    				'address_en' => $data['address_en'],
    				'updated_at' => $now
    			));
    		return true;
    	} 

    	catch(Exception $e) {
    		return false;
    	}
    }

}