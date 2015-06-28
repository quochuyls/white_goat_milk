<?php namespace Modules\Admin\Entities;
   
use Illuminate\Database\Eloquent\Model;

class Products extends Model {
    protected $table = 'tbl_product';

	protected $primaryKey = 'id';

	protected $fillable = [
		'slug',
		'categories_id',
		'title_vi',
		'title_en',
		'description_vi',
		'description_en',
		'content_vi',
		'content_en',
		'price_vi',
		'price_en',
		'price_sale_vi',
		'price_sale_en',
		'unit_vi',
		'unit_en',
		'product_code_vi',
		'product_code_en',
		'sale_flg',
		'thumbnail',
		'icon',
		'new_flg',
		'delete_flag'
	];


	public  $timestamps = true;

	public function category()
	{
		return $this->belongsTo('\Modules\Admin\Entities\Categories', 'categories_id');
	}

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
