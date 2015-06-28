<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class EventCustomer extends Model {

	public $table = 'tbl_event_customer';

	public $timestamps = true;

	public $primaryKey = 'id';

	public $fillable = [];

	public function scopeGetEvents($query, $month, $year) {
		return $query->where(DB::raw('Month(updated_at)'), '=', $month)
			->where(DB::raw('Year(updated_at)'), '=', $year)
			->get();
	}

}
