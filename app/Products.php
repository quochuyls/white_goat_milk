<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Products extends Model {

	public $table = "tbl_product";

	public $timestamps = true;

	public $primaryKey = 'id';

	public $fillable = [];

	public function scopeGetProducts($query) {
		return $query->where('delete_flag', '=', 0)
			->orderBy('updated_at', 'desc')
			->get();
	}

	public function scopeGetProduct($query, $id, $slug) {
		return $query->where('delete_flag', '=', 0)
			->where('slug', '=', $slug)
			->where('id', '=', $id)
			->first();
	}

}
