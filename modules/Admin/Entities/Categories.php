<?php namespace Modules\Admin\Entities;
   
use Illuminate\Database\Eloquent\Model;

class Categories extends Model {

    protected $table = 'tbl_category';
	public  $timestamps = true;
	protected $primaryKey = 'id';
    protected $fillable = ['id', 'name_vi', 'name_en'];

	public function products()
	{
		return $this->hasMany('\Modules\Admin\Entities\Products');
	}

	public function scopeCategoryListVi($query){
		return $query->where('delete_flag', '=', 0 )
			->orderBy('created_at', 'ASC')
			->lists('name_vi', 'id');

	}
	public function scopeCategoryListEn($query){
		return $query->where('delete_flag', '=', 0 )
			->orderBy('created_at', 'ASC')
			->lists('name_en', 'id');

	}


}
