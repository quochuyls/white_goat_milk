<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class BannerIcon extends Model {

	public $table = 'tbl_banner';

	public $timestamps = true;

	public $primaeyKey = 'id';

	public $fillable = [];

	public function scopeGetBannerIcon($query) {
		return $query->where('id',1)->first();
	}

}
