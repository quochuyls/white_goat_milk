<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Service extends Model {

	public $table = "tbl_service";

	public $timestamps = true;

	public $primaryKey = 'id';

	protected $fillable = [];

	public function scopeGetServices($query) {
		return $query->get();
	}

	public function scopeGetService($query, $type) {
		return $query->where('type', '=', $type)->get();
	}
	//

}
