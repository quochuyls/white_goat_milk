<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model {

	public $table = 'tbl_contact';

	public $timestamps = true;

	public $primaryKey = 'id';

	public $fillable = [];

	public function scopeGetContact($query) {
		return $query->where('id', 1)->first();
	}

}
