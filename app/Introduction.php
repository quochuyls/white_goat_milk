<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Introduction extends Model {

	public $table = "tbl_introduction";

	public $timestamps = true;

	public $primaryKey = "id";

	public $fillable = [];
	//

	public function scopeGetIntroduction($query) {
		return $query->where('id', 1)->first();
	}

}
