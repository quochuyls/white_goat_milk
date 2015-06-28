<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Video extends Model {

	public $table = 'tbl_video';

	public $timestamps = true;

	public $primaryKey = 'id';

	public $fillable = [];

	public function scopeGetVideos($query) {
		return DB::table(DB::raw('(SELECT * FROM tbl_video WHERE delete_flag = 0 ORDER BY updated_at DESC) as video'))
            ->groupBy('position')
            ->orderBy('position')
            ->get();
	}

	public function scopeGetVideo($query, $id, $slug) {
		return $query->whereNotNull('publish_at')
			->where('id', '=', $id)
			->where('slug', '=', $slug)
			->first();
	}

}
