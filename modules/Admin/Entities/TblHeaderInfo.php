<?php namespace Modules\Admin\Entities;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class TblHeaderInfo extends Model {

	public $table = "tbl_header_info";

	public $primaryKey = "id";

	public $timestamp = true;

    protected $fillable = [
    	"id",
    	"phone",
    	"email",
    	"created_at",
    	"updated_at"
    ];

    public function insertInfoDefault() {
    	$now = Carbon::now();
    	return DB::table('tbl_header_info')->insert(array(
			'phone' => '',
			'email' => '',
			'created_at' => $now,
			'updated_at' => $now
		));
    }

    public function updateInfo($data) {
    	$now = Carbon::now();
    	try {
    		DB::table('tbl_header_info')->where('id', 1)->update(array(
    				'phone' => $data['phone'],
    				'email'	=> $data['email'],
    				'updated_at' => $now
    			));
    		return true;
    	} 

    	catch(Exception $e) {
    		return false;
    	}
    }

}