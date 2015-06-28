<?php namespace Modules\Admin\Entities;
   
use Illuminate\Database\Eloquent\Model;

class Videos extends Model {

	protected $table = 'tbl_video';
	protected $primaryKey = 'id';
	public  $timestamps = true;
	protected $fillable = [
		'slug',
		'youtube_id',
		'url',
		'title',
		'position',
		'thumbnail',
		'delete_flag',
		'publish_at'
	];


	public function scopePublish($query){
		return $query->where('delete_flag', '=', 0 )
			->orderBy('created_at', 'DESC')
			->get();
	}

	public function setPublishAtAttribute($value){
		$this->attributes['publish_at'] = empty($value) ? null : $value;
	}

	public function scopeGetTotal($query) {
		return $query->where('delete_flag', '=', 0)->count();
	}

}
