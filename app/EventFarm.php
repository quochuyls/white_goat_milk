<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class EventFarm extends Model {

	public $table = "tbl_event_farm";

	public $timestamps = true;

	public $primaryKey = 'id';

	public $fillable = [];

	public function scopeGetEvents($query) {
		return $query->whereNotNull('publish_at')->orderBy('updated_at', 'DESC')->get();
	}

	public function scopeGetEvent($query, $slug, $id) {
		return $query->whereNotNull('publish_at')
			->where('slug', '=' ,$slug)
			->where('id', '=', $id)
			->first();
	}

}
