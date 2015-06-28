<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model {

	public $table = 'tbl_customer';

	public $timestamps = true;

	public $primaryKey = "id";

	public $fillable = [];

	public function scopeGetCustomers($query) {
		return $query->get();
	}
	//

}
