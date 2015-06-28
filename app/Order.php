<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Order extends Model {

	public $table = "tbl_order";

	public $timestamps = true;

	public $primaryKey = 'id';

	public $fillable = [];

	public function scopeAddOrder($query, $values) {
		return DB::table('tbl_order')->insertGetId($values);
	}

	public function scopeGetOrder($query, $id, $token) {
		return $query->where('active', '=', 0)
			->where('id', '=', $id)
			->where('token', '=', $token)
			->first();
	}

	public function scopeUpdateActive($query, $id, $token) {
		return DB::table('tbl_order')->where('active', '=', 0)
			->where('id', '=', $id)
			->where('token', '=', $token)
			->update(['active' => 1]);
	}

}
